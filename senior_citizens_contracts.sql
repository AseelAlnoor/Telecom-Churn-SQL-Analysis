SELECT
  Contract,
  `Tech Support`,
  COUNT(CustomerID) AS total_senior_citizens,
  SUM(CASE WHEN `Churn Value` = 1 THEN 1 ELSE 0 END) AS churned_seniors,
  ROUND(
    SUM(CASE WHEN `Churn Value` = 1 THEN 1 ELSE 0 END)
      * 100.0
      / COUNT(CustomerID),
    2)
    AS churn_rate_percentage
FROM `psyched-bonfire-471306-t9.telecom_churn_project.churn_raw_data`
WHERE `Senior Citizen` = TRUE
GROUP BY Contract, `Tech Support`
ORDER BY churn_rate_percentage DESC;
