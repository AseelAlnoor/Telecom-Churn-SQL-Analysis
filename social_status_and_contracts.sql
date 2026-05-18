SELECT
  Partner,
  Dependents,
  Contract,
  `Internet Service`,
  COUNT(CustomerID) AS total_customers,
  SUM(CASE WHEN `Churn Label` IS TRUE THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN `Churn Label` IS TRUE THEN 1 ELSE 0 END)
      * 100.0
      / COUNT(CustomerID),
    2)
    AS churn_rate_percentage,
  ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly_charges
FROM `psyched-bonfire-471306-t9.telecom_churn_project.churn_raw_data`
GROUP BY Partner, Dependents, Contract, `Internet Service`
HAVING total_customers > 50
ORDER BY churn_rate_percentage DESC;
