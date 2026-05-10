USE SCHEMA ECOMMERCE_DB.STAGING;

CREATE OR REPLACE STAGE S3_ECOMMERCE_STAGE
    STORAGE_INTEGRATION = S3_ECOMMERCE_INT
    URL = 's3://ecommerce-data-lake-harsha/raw/sales/'
    FILE_FORMAT = CSV_FORMAT
    COMMENT = 'External stage pointing to S3 raw sales data';

-- Verify the connection works
LIST @S3_ECOMMERCE_STAGE;
