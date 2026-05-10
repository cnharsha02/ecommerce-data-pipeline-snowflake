USE ROLE ACCOUNTADMIN;

CREATE OR REPLACE STORAGE INTEGRATION S3_ECOMMERCE_INT
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = 'S3'
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::<YOUR_AWS_ACCOUNT_ID>:role/SnowflakeS3Role'
    STORAGE_ALLOWED_LOCATIONS = ('s3://ecommerce-data-lake-harsha/');

-- Run this to get Snowflake's IAM user ARN and External ID
-- You need these two values to update the AWS Trust Policy
DESC STORAGE INTEGRATION S3_ECOMMERCE_INT;

-- Look for these two values in the output:
-- STORAGE_AWS_IAM_USER_ARN    → copy this
-- STORAGE_AWS_EXTERNAL_ID     → copy this
