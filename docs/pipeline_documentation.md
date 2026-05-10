
# Pipeline Documentation

## Overview

This pipeline ingests e-commerce sales data from AWS S3 into Snowflake using a Medallion Architecture (Bronze → Silver → Gold) with automated processing via Streams and Tasks.

## Architecture Flow

Kaggle CSV → AWS S3 (Data Lake) → Snowpipe (Auto-Ingest)
    → Bronze (Raw) → Silver (Cleaned) → Gold (Analytics)
    → Automated via Streams + Tasks


### Bronze Layer (Raw)
- **Schema:** ECOMMERCE_DB.BRONZE
- **Table:** RAW_ECOMMERCE_SALES
- **Purpose:** Store raw data exactly as received from S3
- **Load Method:** COPY INTO / Snowpipe auto-ingest



### Silver Layer (Cleaned)
- **Schema:** ECOMMERCE_DB.SILVER
- **Table:** CLEAN_ECOMMERCE_SALES
- **Purpose:** Cleaned, standardized, enriched data
- **Transformations Applied:**
  - Text standardization (INITCAP, TRIM)
  - Date part extraction (year, month, quarter, day)
  - Boolean conversion (is_returned)
  - Calculated fields (gross_amount, discount_amount)
  - Categorization (delivery_category, rating_category)



### Gold Layer (Analytics)
- **Schema:** ECOMMERCE_DB.GOLD
- **Tables:** 4 aggregation tables + 1 KPI view
- **Purpose:** Business-ready analytics and dashboards


## Automation

| Component | Purpose |
|-----------|---------|
| Snowpipe | Auto-loads new files from S3 |
| Stream | Captures new inserts in Bronze |
| Task 1 | Bronze → Silver (MERGE, every 2 hours) |
| Task 2 | Silver → Gold (Refresh aggregations) |



## Monitoring

- **DATA_QUALITY_REPORT:** Checks for nulls, negatives, duplicates
- **PIPELINE_HEALTH:** Row count matching across layers
- **SNOWPIPE_STATUS:** Pipe configuration and status




