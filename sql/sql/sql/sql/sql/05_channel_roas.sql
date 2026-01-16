-- 05_channel_roas.sql
-- Purpose: Compare channel-level efficiency (naive ROAS by channel)
-- Note: Sales are influenced by multiple channels, so treat as directional.

SELECT
  AVG(SAFE_DIVIDE(Sales, TV)) AS avg_roas_tv,
  AVG(SAFE_DIVIDE(Sales, Radio)) AS avg_roas_radio,
  AVG(SAFE_DIVIDE(Sales, Newspaper)) AS avg_roas_newspaper
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;
