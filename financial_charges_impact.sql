SELECT
  `Churn Label` AS Churn,
  COUNT(CustomerID) AS total_customers,
  ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly_charges,
  ROUND(AVG(CAST(`Total Charges` AS FLOAT64)), 2) AS avg_total_charges
FROM `psyched-bonfire-471306-t9.telecom_churn_project.churn_raw_data`
WHERE `Total Charges` IS NOT NULL AND `Total Charges` != ' '
GROUP BY 1;
