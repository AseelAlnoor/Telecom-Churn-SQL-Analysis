SELECT
  Gender,
  `Senior Citizen`,
  COUNT(CustomerID) AS total_customers,
  SUM(CASE WHEN `Churn Label` = TRUE THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN `Churn Label` = TRUE THEN 1 ELSE 0 END)
      * 100.0
      / COUNT(CustomerID),
    2)
    AS churn_rate_percentage
FROM `psyched-bonfire-471306-t9.telecom_churn_project.churn_raw_data`
GROUP BY Gender, `Senior Citizen`
ORDER BY churn_rate_percentage DESC;
