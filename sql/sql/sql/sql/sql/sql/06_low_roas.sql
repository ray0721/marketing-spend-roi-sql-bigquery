-- 06_low_roas.sql
-- Purpose: Identify lowest-performing campaigns by ROAS

SELECT
  ID,
  TV,
  Radio,
  Newspaper,
  Sales,
  (TV + Radio + Newspaper) AS total_spend,
  SAFE_DIVIDE(Sales, (TV + Radio + Newspaper)) AS roas
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`
ORDER BY roas ASC
LIMIT 15;
