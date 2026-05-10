
# Data Dictionary

## Bronze Layer: RAW_ECOMMERCE_SALES

| Column | Type | Description |
|--------|------|-------------|
| ORDER_ID | NUMBER | Unique order identifier |
| CUSTOMER_ID | VARCHAR | UUID of the customer |
| PRODUCT_CATEGORY | VARCHAR | Category: Beauty, Fashion, Electronics, Sports, Toys, Home, Automotive |
| PRODUCT_PRICE | FLOAT | Unit price of the product in USD |
| QUANTITY | INT | Number of items ordered |
| ORDER_DATE | DATE | Date the order was placed |
| REGION | VARCHAR | Geographic region: Europe, North America, Asia, Africa, Oceania, South America |
| PAYMENT_METHOD | VARCHAR | Payment type: CreditCard, PayPal, BankTransfer, Cash |
| DELIVERY_DAYS | INT | Number of days to deliver (1-9) |
| IS_RETURNED | INT | 1 = returned, 0 = not returned |
| CUSTOMER_RATING | FLOAT | Customer satisfaction rating (2.0 - 5.0) |
| DISCOUNT_PERCENT | FLOAT | Discount applied (0, 5, 10, 15, 20) |
| REVENUE | FLOAT | Total revenue from the order |
| _LOADED_AT | TIMESTAMP | Audit: when data was loaded |
| _SOURCE_FILE | VARCHAR | Audit: source file name from S3 |

## Silver Layer: CLEAN_ECOMMERCE_SALES

All Bronze columns plus:

| Column | Type | Description |
|--------|------|-------------|
| ORDER_YEAR | INT | Extracted year from order date |
| ORDER_MONTH | INT | Extracted month from order date |
| ORDER_QUARTER | INT | Extracted quarter from order date |
| ORDER_DAY_OF_WEEK | VARCHAR | Day name (Mon, Tue, etc.) |
| IS_RETURNED | BOOLEAN | Converted to TRUE/FALSE |
| GROSS_AMOUNT | FLOAT | product_price * quantity |
| DISCOUNT_AMOUNT | FLOAT | gross_amount * (discount_percent / 100) |
| IS_HIGH_VALUE_ORDER | BOOLEAN | TRUE if revenue > 500 |
| DELIVERY_CATEGORY | VARCHAR | Express (<=2), Standard (3-5), Delayed (6+) |
| RATING_CATEGORY | VARCHAR | Positive (>=4), Neutral (3-3.9), Negative (<3) |
| _TRANSFORMED_AT | TIMESTAMP | Audit: when transformation ran |

## Gold Layer Tables

| Table | Description |
|-------|-------------|
| DAILY_SALES_SUMMARY | Daily aggregated sales metrics |
| PRODUCT_CATEGORY_PERFORMANCE | Category-level KPIs and return rates |
| REGIONAL_SALES_DASHBOARD | Region + quarter + payment breakdowns |
| CUSTOMER_BEHAVIOR | Customer lifetime value and segmentation |
| EXECUTIVE_KPI_SUMMARY | High-level business KPIs (view) |
