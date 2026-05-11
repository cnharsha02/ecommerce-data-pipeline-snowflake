
# 🛒 E-Commerce Data Engineering Pipeline

## 📌 Project Overview
Production-grade **end-to-end data pipeline** for e-commerce sales analytics using **Snowflake**, **AWS S3**, and **Medallion Architecture** — processing **100,000+ transactions** across 7 product categories and 6 global regions.

## 🏗️ Architecture

    Kaggle CSV (100K rows)
            ↓
       AWS S3 (Data Lake)
            ↓
       Snowflake External Stage
            ↓
       BRONZE (Raw Data)
            ↓
       SILVER (Cleaned & Enriched)
            ↓
       GOLD (Analytics & KPIs)
            ↓
       Monitoring & Data Quality

## 🛠️ Tech Stack
| Technology | Purpose |
|-----------|---------|
| **Snowflake** | Cloud Data Warehouse |
| **AWS S3** | Data Lake / External Storage |
| **SQL** | Transformations & Analytics |
| **GitHub** | Version Control & Portfolio |

## 📊 Key Features
- ✅ **Medallion Architecture** (Bronze → Silver → Gold)
- ✅ **AWS S3 Integration** via External Stage
- ✅ **100,000 rows** ingested and transformed
- ✅ **5 enriched columns** added in Silver layer
- ✅ **5 Gold-layer** analytics tables and views
- ✅ **Data Quality** monitoring framework
- ✅ **Pipeline Health** tracking
- ✅ **Production audit columns** (_loaded_at, _transformed_at, _source_file)

## 📈 Business KPIs Generated
| KPI | Description |
|-----|-------------|
| Daily Sales Summary | Revenue trends by date and day-of-week |
| Product Performance | Category-wise revenue, return rates, ratings |
| Regional Dashboard | Sales by region, quarter, payment method |
| Customer Segmentation | Lifetime value tiers (Platinum/Gold/Silver/Bronze) |
| Executive KPIs | Total revenue, avg order value, return rate |

## 📂 Project Structure

    ecommerce-data-pipeline-snowflake/
    ├── sql/
    │   ├── 01_setup/              (Database, Schema, Warehouse, Roles)
    │   ├── 02_ingestion/          (Stage, File Format, Snowpipe, COPY INTO)
    │   ├── 03_transformations/    (Bronze→Silver→Gold, Data Quality)
    │   ├── 04_automation/         (Streams, Tasks, Alerts)
    │   └── 05_analytics/          (KPI Views, Dashboard Queries)
    ├── data/                      (Sample dataset - 10 rows)
    ├── docs/                      (Data Dictionary, Pipeline Docs)
    └── screenshots/               (Pipeline execution screenshots)

## 🚀 How to Reproduce
1. Clone this repository
2. Create an AWS S3 bucket and upload the CSV to raw/ folder
3. Create a Snowflake trial account
4. Run SQL scripts in numbered order (01_setup → 05_analytics)
5. Verify data flows: Bronze (100K) → Silver (100K) → Gold (5 tables)
6. Check monitoring: Data Quality Report + Pipeline Health

## 📸 Screenshots

### Database Schemas
<img width="681" height="245" alt="01_schemas" src="https://github.com/user-attachments/assets/3f5b68a9-3a4e-49a4-9760-fc36650da0df" />

### Bronze Layer (Raw Data)
<img width="839" height="271" alt="02_bronze_data" src="https://github.com/user-attachments/assets/822abfd4-702b-40ba-b5a1-0d3e434df72f" />

### Silver Layer (Cleaned and Enriched)
<img width="929" height="77" alt="03_silver_data" src="https://github.com/user-attachments/assets/1fb931a3-07b7-4d42-a813-0a8d89cb1ed1" />

### Executive KPI Summary
<img width="848" height="55" alt="04_executive_kpis" src="https://github.com/user-attachments/assets/0c2d3144-4f1e-40c7-8fd4-5e80c7228a6f" />

### Product Category Performance
<img width="721" height="138" alt="05_product_performance" src="https://github.com/user-attachments/assets/a05769f4-4363-4978-8d63-67079d3ce5ca" />

### Customer Tier Segmentation
<img width="891" height="182" alt="06_customer_tiers" src="https://github.com/user-attachments/assets/54c13648-1d87-4360-9660-dca73b8eb747" />

### Data Quality Report
<img width="887" height="205" alt="07_data_quality" src="https://github.com/user-attachments/assets/d91f26c3-b599-4870-97dd-d886516fb670" />

### Pipeline Health Monitoring
<img width="862" height="222" alt="08_pipeline_health" src="https://github.com/user-attachments/assets/f6f2dc1b-8a6a-4b53-8795-10ea8fc7dab9" />

### AWS S3 Data Lake
<img width="953" height="453" alt="09_s3_bucket" src="https://github.com/user-attachments/assets/9558c2da-f1f3-4f50-92c7-f68745d22632" />

### IAM Access Configuration
<img width="959" height="466" alt="10_iam_user" src="https://github.com/user-attachments/assets/d16addee-6345-4b6f-949c-746420b34b6e" />

## 📄 Documentation
- docs/data_dictionary.md — Column definitions for all layers
- docs/pipeline_documentation.md — Architecture and flow details
- docs/architecture_decisions.md — Why each technology was chosen

## 👤 Author
**Harsha C N**
- 💼 Data Engineer | 3 Years Experience
- 🛠️ Snowflake | DBT | AWS | SQL | Python | Informatica
- 📍 Bangalore, India
- 🔗 https://github.com/cnharsha02
