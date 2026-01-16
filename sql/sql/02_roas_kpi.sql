-- 02_roas_kpi.sql
-- Purpose: Create Total Spend and Return on Ad Spend (ROAS)

SELECT
  ID,
  TV,
  Radio,
  Newspaper,
  Sales,

  -- Total marketing spend
  (TV + Radio + Newspaper) AS total_spend,

  -- Return on Ad Spend
  SAFE_DIVIDE(Sales, (TV + Radio + Newspaper)) AS roas
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;
