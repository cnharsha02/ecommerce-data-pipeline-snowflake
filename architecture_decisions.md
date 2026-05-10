
# Architecture Decisions

## 1. Medallion Architecture (Bronze → Silver → Gold)
- **Why:** Separates raw, cleaned, and analytics-ready data
- **Benefit:** Easy debugging, reprocessing, and data lineage tracking

## 2. Snowflake as Data Warehouse
- **Why:** Cloud-native, auto-scaling, pay-per-use model
- **Benefit:** No infrastructure management, handles large datasets

## 3. AWS S3 as Data Lake
- **Why:** Cost-effective, durable, integrates natively with Snowflake
- **Benefit:** Centralized raw data storage before ingestion

## 4. Snowpipe for Auto-Ingestion
- **Why:** Event-driven loading eliminates manual COPY INTO
- **Benefit:** Near real-time data availability in Bronze layer

## 5. Streams + Tasks for Automation
- **Why:** Native Snowflake CDC and scheduling — no external tools needed
- **Benefit:** Fully automated Bronze → Silver → Gold pipeline

## 6. MERGE for Incremental Loading
- **Why:** Prevents duplicate records during reprocessing
- **Benefit:** Idempotent transformations, safe re-runs

## 7. Separate Schemas per Layer
- **Why:** Logical isolation (BRONZE, SILVER, GOLD schemas)
- **Benefit:** Clear access control and easier maintenance

## 8. Data Quality Monitoring
- **Why:** Catch nulls, negatives, and duplicates early
- **Benefit:** Trustworthy analytics and dashboards

## 9. GitHub for Version Control
- **Why:** Track all SQL changes, enable collaboration
- **Benefit:** Full audit trail of pipeline evolution
