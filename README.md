# Telecom Customer Churn - Root Cause Analysis Using SQL

## Project Overview
This project presents a comprehensive data-driven investigation into customer churn within a major telecommunications company. Utilizing Google BigQuery (SQL), the analysis transitions beyond descriptive statistics to perform a structured Root Cause Analysis (RCA). The ultimate objective is to identify vulnerable customer segments, isolate service delivery flaws, and provide actionable strategic recommendations to improve customer retention and maximize long-term customer lifetime value (CLV).

---

## The Business Problem
Customer acquisition is substantially more expensive than customer retention. The company has been facing a critical challenge with customer churn. To address this issue at its roots, this analysis investigates customer behavior across four distinct dimensions:
1. **Demographics:** Examining the influence of age, gender, and family dependencies on loyalty.
2. **Contract & Retention:** Evaluating the correlation between contract types, technical support availability, and customer turnover.
3. **Financial Impact:** Analyzing the relationship between high monthly expenditures and long-term revenue generation.
4. **Services:** Pinpointing specific product offerings that trigger dissatisfaction and subsequent exit.

---

## Data Insights & Analytical Revelations

### 1. Demographic Vulnerability (Senior Citizens)
Statistical results indicate that gender plays no significant role in customer churn. However, age is a primary driver of risk. Senior citizens exhibit a severe churn rate of approximately 42%, which is nearly double the churn rate observed in younger demographics (~23%).

### 2. The Month-to-Month Contract Vulnerability
The high churn rate among senior citizens is closely tied to operational factors, specifically contract types and support availability:
* Senior citizens on month-to-month contracts who receive **No Technical Support** exhibit a critical churn rate of **57.74%**.
* Conversely, when senior citizens are transitioned to fixed 1-year or 2-year contracts, the churn rate dramatically decreases to a stable range of **0% to 15%**.

### 3. The Financial Charges Paradox
A comparative analysis of billing structures reveals a critical financial pattern:
* **Churned Customers Average Monthly Charges:** $74.44
* **Retained Customers Average Monthly Charges:** $61.31
* **Strategic Interpretation:** While retained customers pay less on a monthly basis, their long-term loyalty generates a substantially higher **Total Revenue ($2,555.34)** compared to churned customers ($1,531.80), who abandon the service early due to high monthly bills.

### 4. Product Assessment: Fiber Optic Pricing
The primary product-related catalyst for customer loss is the Fiber Optic Internet service. It exhibits the highest turnover despite having the largest user base:

| Internet Service Type | Total Customers | Churned Customers | Churn Rate (%) | Avg. Monthly Charges |
|-----------------------|-----------------|-------------------|----------------|----------------------|
| **Fiber Optic** | 3,096           | 1,297             | **41.89%** | **$91.50** |
| **DSL** | 2,421           | 459               | 18.96%         | $58.10               |

### 5. Multi-Dimensional Root Cause Synthesis
By combining social status, contract design, and core services, the absolute weakest customer segment was isolated:
* **Single/Unattached Customers** utilizing **Fiber Optic Internet** under a **Month-to-month contract** demonstrate the highest churn rates in the dataset, ranging between **58.23% and 59.97%**.
* **Behavioral Explanation:** Because these individuals lack family household dependencies (such as children requiring stable internet for education or entertainment), they possess high mobility and cancel their expensive ($91+) monthly service immediately upon experiencing technical or financial dissatisfaction.

---

## Strategic Business Recommendations
Based on the empirical findings of this SQL analysis, the following data-driven strategies are recommended for management:

1. **Targeted Retention Campaigns for Seniors:** Develop a dedicated "Retirement/Senior Bundle" designed to proactively migrate elderly users from high-risk monthly plans into fixed 1 or 2-year contracts by offering slight loyalty discounts.
2. **Proactive Technical Support for Fiber Optic Subscribers:** Establish an automated onboarding protocol that provides premium, high-touch technical assistance specifically to Fiber Optic users during their first 90 days to mitigate initial churn risk.
3. **Structured Financial Incentives for Unattached Youth:** Implement milestone-based loyalty rewards for single monthly fiber-optic subscribers (e.g., a discounted billing cycle upon completing 6 consecutive months of subscription) to extend their average tenure.

---

## Repository Structure
The analytical workflow is divided into structured SQL scripts as follows:
* `data_exploration.sql` - Preliminary data profiling and initial schema exploration.
* `demographic_churn_analysis.sql` - Evaluation of Gender and Senior Citizen distributions.
* `financial_charges_impact.sql` - Investigation of Monthly Charges vs. Cumulative Revenue impact.
* `internet_services_churn.sql` - Comparative analysis of Fiber Optic vs. DSL service performance.
* `senior_citizens_contracts.sql` - Deep-dive into senior citizen contract structures and support access.
* `social_status_and_contracts.sql` - Advanced segment compounding to uncover the definitive root causes of churn.
