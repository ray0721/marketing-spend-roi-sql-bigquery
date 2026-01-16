-- 07_decile_analysis.sql
-- Purpose: Evaluate diminishing returns using spend deciles (window function)

WITH spend_bucket AS (
  SELECT
    *,
    NTILE(10) OVER (ORDER BY (TV + Radio + Newspaper)) AS spend_decile
  FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`
)
SELECT
  spend_decile,
  COUNT(*) AS campaigns,
  AVG(TV + Radio + Newspaper) AS avg_spend,
  AVG(Sales) AS avg_sales,
  AVG(SAFE_DIVIDE(Sales, (TV + Radio + Newspaper))) AS avg_roas
FROM spend_bucket
GROUP BY spend_decile
ORDER BY spend_decile;
