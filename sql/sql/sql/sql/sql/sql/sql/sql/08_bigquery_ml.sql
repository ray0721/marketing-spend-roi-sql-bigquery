-- 08_bigquery_ml.sql
-- Purpose: Quantify channel impact on sales using BigQuery ML (linear regression)

-- 1) Train a linear regression model
CREATE OR REPLACE MODEL `marketing-spend-roi-analysis.marketing_roi.sales_regression_model`
OPTIONS (
  model_type = 'linear_reg',
  input_label_cols = ['Sales']
) AS
SELECT
  TV,
  Radio,
  Newspaper,
  Sales
FROM `marketing-spend-roi-analysis.marketing_roi.marketing_spend`;

-- 2) Inspect coefficients (marginal impact by channel)
SELECT
  processed_input AS feature,
  weight AS coefficient
FROM ML.WEIGHTS(MODEL `marketing-spend-roi-analysis.marketing_roi.sales_regression_model`)
ORDER BY ABS(weight) DESC;

-- 3) Evaluate model quality (R2, RMSE)
SELECT
  *
FROM ML.EVALUATE(MODEL `marketing-spend-roi-analysis.marketing_roi.sales_regression_model`);
