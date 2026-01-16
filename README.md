# Marketing Spend ROI Analysis (SQL + BigQuery)

## Project Overview
This project analyzes marketing spend efficiency across TV, Radio, and Newspaper channels using SQL in Google BigQuery.  
The goal is to evaluate Return on Ad Spend (ROAS), identify diminishing returns, and quantify channel-level impact on sales.

This project demonstrates end-to-end analytical thinking:
- KPI engineering in SQL
- Marketing mix analysis
- Efficiency and optimization insights
- Regression modeling using BigQuery ML

---

## Dataset
**Source:** Advertising spend dataset  
**Observations:** 200 campaigns  

**Columns:**
- `ID` – Campaign identifier  
- `TV` – TV advertising spend  
- `Radio` – Radio advertising spend  
- `Newspaper` – Newspaper advertising spend  
- `Sales` – Sales outcome  

---

## Key Analyses Performed
- Data validation and quality checks  
- Total spend and ROAS calculation  
- Overall marketing performance KPIs  
- Channel-level spend share (marketing mix)  
- Channel efficiency comparison (ROAS)  
- Identification of low-ROI campaigns  
- Diminishing returns analysis using spend deciles  
- Linear regression modeling using BigQuery ML  

---

## Key Insights
- Marketing efficiency declines as total spend increases, indicating diminishing returns.
- Lower-spend campaigns generate higher average ROAS.
- Regression results show stronger marginal impact from Radio compared to TV, with Newspaper contributing minimal incremental sales.
- Spend decile analysis shows ROAS declining from low-spend to high-spend groups, consistent with diminishing returns.

---

## Tools & Skills
- SQL (Google BigQuery)
- Window Functions
- Marketing Analytics
- ROAS & KPI Analysis
- BigQuery ML (Linear Regression)
- Business Insight Generation

---

## Related Work
- Tableau dashboards for this analysis are published on Tableau Public.
- This project complements multiple Tableau-based marketing analytics projects.

---

## Author
**Md Rayhan Hossain**  
MS Business & Marketing Analytics  
LinkedIn: https://www.linkedin.com/in/ray-07
