
-- ============================================
-- 01_streams.sql
-- ============================================

USE SCHEMA ECOMMERCE_DB.BRONZE;

-- Create a stream to capture new inserts into the raw table
CREATE OR REPLACE STREAM BRONZE_SALES_STREAM
    ON TABLE RAW_ECOMMERCE_SALES
    APPEND_ONLY = TRUE
    COMMENT = 'Captures new inserts into the raw sales table for incremental processing';

-- Verify stream was created
SHOW STREAMS;

-- Check if stream has data
SELECT SYSTEM$STREAM_HAS_DATA('ECOMMERCE_DB.BRONZE.BRONZE_SALES_STREAM');
