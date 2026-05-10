CREATE OR REPLACE DATABASE ECOMMERCE_DB
    COMMENT = 'E-Commerce Data Pipeline - Medallion Architecture';

CREATE OR REPLACE SCHEMA ECOMMERCE_DB.BRONZE
    COMMENT = 'Raw data layer - data as-is from S3';

CREATE OR REPLACE SCHEMA ECOMMERCE_DB.SILVER
    COMMENT = 'Cleaned and standardized data layer';

CREATE OR REPLACE SCHEMA ECOMMERCE_DB.GOLD
    COMMENT = 'Analytics-ready data layer with KPIs and aggregations';

CREATE OR REPLACE SCHEMA ECOMMERCE_DB.STAGING
    COMMENT = 'File formats, stages, and pipes';

CREATE OR REPLACE SCHEMA ECOMMERCE_DB.MONITORING
    COMMENT = 'Pipeline health and audit logs';
