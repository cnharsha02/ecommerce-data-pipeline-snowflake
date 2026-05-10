
-- ============================================
-- 04_snowpipe.sql
-- ============================================

USE SCHEMA ECOMMERCE_DB.STAGING;

CREATE OR REPLACE PIPE ECOMMERCE_PIPE
    AUTO_INGEST = TRUE
    COMMENT = 'Auto-ingest pipe for e-commerce sales data from S3'
AS
COPY INTO ECOMMERCE_DB.BRONZE.RAW_ECOMMERCE_SALES (
    ORDER_ID, CUSTOMER_ID, PRODUCT_CATEGORY, PRODUCT_PRICE,
    QUANTITY, ORDER_DATE, REGION, PAYMENT_METHOD,
    DELIVERY_DAYS, IS_RETURNED, CUSTOMER_RATING, DISCOUNT_PERCENT,
    REVENUE, _SOURCE_FILE
)
FROM (
    SELECT
        $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13,
        METADATA$FILENAME
    FROM @ECOMMERCE_DB.STAGING.S3_ECOMMERCE_STAGE
)
FILE_FORMAT = (FORMAT_NAME = 'ECOMMERCE_DB.STAGING.CSV_FORMAT')
ON_ERROR = 'CONTINUE';

-- Get the SQS ARN for S3 event notification
SHOW PIPES;
-- Copy the "notification_channel" value for S3 setup
