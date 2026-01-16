-- 03_overall_kpis.sql
-- Purpose: Compute overall marketing performance KPIs

SELECT
  -- Spend KPIs
  SUM(TV + Radio + Newspaper) AS total_marketing_spend,
  AVG(TV + Radio + Newspaper) AS avg_marketing_spend,

  -- Sales KPIs
  SUM(Sales) AS total_sales,
  AVG(Sales) AS avg_sales,

  -- Efficiency KPI
  SAFE_DIVIDE(SUM(Sales), SUM(TV + Radio + Newspaper)) AS overall_roas
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;
