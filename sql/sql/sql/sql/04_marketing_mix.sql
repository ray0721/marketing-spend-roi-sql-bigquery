-- 04_marketing_mix.sql
-- Purpose: Analyze marketing mix (spend share by channel)

SELECT
  SUM(TV) AS total_tv_spend,
  SUM(Radio) AS total_radio_spend,
  SUM(Newspaper) AS total_newspaper_spend,

  -- Spend share by channel
  SUM(TV) / SUM(TV + Radio + Newspaper) AS tv_spend_share,
  SUM(Radio) / SUM(TV + Radio + Newspaper) AS radio_spend_share,
  SUM(Newspaper) / SUM(TV + Radio + Newspaper) AS newspaper_spend_share
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;
