-- 01_data_check.sql
-- Purpose: Validate dataset shape and check for missing values

-- Row count and uniqueness check
SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ID) AS unique_campaigns
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;

-- Null value check
SELECT
  COUNTIF(ID IS NULL) AS null_id,
  COUNTIF(TV IS NULL) AS null_tv,
  COUNTIF(Radio IS NULL) AS null_radio,
  COUNTIF(Newspaper IS NULL) AS null_newspaper,
  COUNTIF(Sales IS NULL) AS null_sales
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;
