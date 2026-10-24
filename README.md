# Customer Churn & Retention Analysis

## 📌 Project Overview

Customer churn is a major business challenge because losing existing customers can affect revenue, customer relationships, and long-term business growth.

This project analyzes customer churn and retention patterns using Python, MySQL, and Power BI. It follows an end-to-end data analytics workflow, starting with data cleaning in Python, followed by SQL-based business analysis, Python-based exploratory data analysis (EDA), and an interactive Power BI dashboard.

The goal is to identify customer segments with higher churn rates, understand important churn patterns, and provide actionable recommendations to improve customer retention.

## 🎯 Project Objectives

* Clean and prepare raw customer data using Python.
* Analyze customer churn and retention using MySQL.
* Answer 10 business questions using SQL queries.
* Perform exploratory data analysis and visualizations in Python.
* Build an interactive Power BI dashboard.
* Identify high-risk customer segments.
* Develop data-driven recommendations for improving customer retention.

## 🛠️ Tools & Technologies

| Tool                       | Purpose                                                                |
| -------------------------- | ---------------------------------------------------------------------- |
| Python                     | Initial data cleaning and exploratory data analysis                    |
| Pandas                     | Data cleaning, data manipulation, joining, and analysis                |
| NumPy                      | Numerical operations and data analysis                                 |
| Matplotlib                 | Data visualization                                                     |
| Seaborn                    | Exploratory data visualizations                                        |
| Jupyter Notebook           | Executing and documenting Python analysis                              |
| MySQL                      | SQL-based business analysis                                            |
| SQL                        | Aggregations, grouping, conditional logic, and churn rate calculations |
| MySQL Connector for Python | Connecting Python to MySQL and retrieving database data                |
| Power BI                   | Interactive dashboard development                                      |
| DAX                        | KPI calculations and measures                                          |

## 🔄 Project Workflow

### Phase 1: Data Cleaning Using Python

The project started with a raw customer churn dataset.

Python was used to inspect the dataset, identify data quality issues, and prepare the data for analysis.

Key activities included:

* Inspecting the dataset structure and column types.
* Checking for missing values.
* Checking for duplicate customer records.
* Identifying data quality issues.
* Cleaning and preparing the dataset for subsequent analysis.

**Outcome:** A prepared dataset suitable for SQL-based business analysis.

### Phase 2: Business Analysis Using MySQL

After data cleaning, the dataset was analyzed using MySQL.

SQL queries were written to answer 10 business questions and calculate important churn metrics across different customer segments.

The analysis covered:

* Overall customer churn and retention.
* Churn by contract type.
* Churn by geographical region.
* Churn by senior citizen status.
* Churn by internet service.
* Churn across customer tenure groups.
* Churn by monthly charge categories.
* Churn by payment method.
* Churn by support ticket categories.
* Identification of a high-risk customer segment.

**Outcome:** SQL-based business insights that helped identify important churn patterns and potential retention opportunities.

### Phase 3: Exploratory Data Analysis Using Python

Python was used again after the MySQL analysis to explore the data in greater detail.

Customer and churn data were loaded directly from MySQL into Python, and the relevant tables were joined for analysis.

Key activities included:

* Connecting Python to MySQL.
* Importing data directly from database tables.
* Joining customer and churn data.
* Exploring distributions and relationships between variables.
* Analyzing churn patterns across customer segments.
* Creating visualizations to support the findings.

**Outcome:** A deeper understanding of customer behavior and churn patterns through exploratory analysis and visualizations.

### Phase 4: Interactive Dashboard Using Power BI

Power BI was used to transform the analytical findings into an interactive dashboard.

The dashboard presents key performance indicators and visual comparisons that help users understand customer churn and retention.

**Outcome:** An interactive dashboard for exploring churn patterns and supporting business decisions.

### Phase 5: Business Recommendations

The findings from the SQL analysis, Python EDA, and Power BI dashboard were used to develop recommendations focused on customer retention and high-risk segments.

## 📂 Dataset Overview

The dataset contains **50,000 customer records and 19 columns**.

It includes customer demographics, account information, service details, billing information, support activity, and churn status.

| Column Name         | Description                                                |
| ------------------- | ---------------------------------------------------------- |
| `customer_id`       | Unique identifier assigned to each customer                |
| `signup_date`       | Date when the customer signed up                           |
| `region`            | Geographical region of the customer                        |
| `age`               | Customer's age                                             |
| `senior_citizen`    | Indicates whether the customer is a senior citizen         |
| `partner`           | Indicates whether the customer has a partner               |
| `dependents`        | Indicates whether the customer has dependents              |
| `tenure_months`     | Number of months the customer has stayed with the company  |
| `contract_type`     | Type of contract selected by the customer                  |
| `internet_service`  | Internet service used by the customer                      |
| `payment_method`    | Method used to make payments                               |
| `monthly_charges`   | Monthly amount charged to the customer                     |
| `total_charges`     | Total charges accumulated by the customer                  |
| `support_tickets`   | Number of support tickets raised by the customer           |
| `online_security`   | Indicates whether the customer has online security service |
| `tech_support`      | Indicates whether the customer has technical support       |
| `paperless_billing` | Indicates whether the customer uses paperless billing      |
| `churn_flag`        | Indicates whether the customer has churned                 |
| `churn_date`        | Date when the customer churned, where applicable           |

## 📊 Key Performance Indicators

The analysis focuses on the following KPIs:

* Total Customers
* Total Churned Customers
* Total Active Customers
* Churn Rate (%)
* Retention Rate (%)
* Average Customer Age

### Overall Customer Metrics

| KPI                     | Result |
| ----------------------- | -----: |
| Total Customers         | 50,000 |
| Total Churned Customers |  7,023 |
| Total Active Customers  | 42,977 |
| Churn Rate              | 14.05% |
| Retention Rate          | 85.95% |

## 📈 Power BI Dashboard

The interactive dashboard provides an overview of customer churn and allows users to explore patterns across different customer segments.

### Dashboard Screenshot

<img width="892" height="504" alt="image" src="https://github.com/user-attachments/assets/bdb8f450-d4bd-4bbb-8bf8-b04b11d34929" />


### Dashboard Features

**KPI Cards**

* Total Customers
* Total Churned Customers
* Total Active Customers
* Churn Rate
* Retention Rate
* Average Customer Age

**Visualizations**

* Contract Type vs. Churn Rate
* Region vs. Churn Rate
* Payment Method vs. Churn Rate
* Internet Service vs. Churn Rate
* Tenure Group vs. Churn Rate
* Monthly Churn Trend

**Interactive Filters**

* Region
* Tenure Group
* Payment Method

## 🔍 Key Business Insights

### 1. Month-to-Month Contracts Have the Highest Churn Rate

Month-to-month customers have a churn rate of **18.59%**, compared with 9.86% for one-year contracts and 5.62% for two-year contracts.

**Business implication:** Consider suitable long-term contract incentives and personalized retention offers.

### 2. New Customers Show Higher Churn

Customers with 0–6 months of tenure have a churn rate of **15.77%**, the highest among the analyzed tenure groups.

**Business implication:** Improve onboarding and provide proactive support during the first six months.

### 3. Fiber Optic Customers Have Higher Observed Churn

Fiber optic customers have a churn rate of **16.32%**, compared with 12.03% for DSL customers and 11.85% for customers without internet service.

**Business implication:** Investigate customer feedback, pricing, service reliability, and support experiences.

### 4. Electronic Check Users Have Higher Churn

Customers using electronic checks have a churn rate of **16.09%**, higher than the rates for the other listed payment methods.

**Business implication:** Examine the payment experience and customer feedback to understand whether improvements are needed.

### 5. A High-Risk Customer Segment Was Identified

The high-risk segment consists of customers who meet all three conditions:

* Month-to-month contract.
* Monthly charges greater than 60.
* Customer tenure of six months or less.

This segment contains **4,552 customers**, of whom **1,053 have churned**.

Its churn rate is **23.13%**, which is **9.08 percentage points above** the overall churn rate of 14.05%.

**Business implication:** Prioritize this segment for targeted retention campaigns and personalized customer engagement.

## 💡 Business Recommendations

Based on the analysis, the following actions could help improve customer retention:

1. **Encourage Long-Term Contracts:** Develop suitable incentives to encourage month-to-month customers to consider longer contracts.

2. **Improve New-Customer Onboarding:** Conduct early satisfaction check-ins and provide timely support during the first six months.

3. **Investigate Fiber Optic Churn:** Review service quality, pricing, customer feedback, and support experiences.

4. **Target High-Risk Customers:** Prioritize customers with month-to-month contracts, high monthly charges, and short tenure for personalized retention campaigns.

5. **Review Payment Experiences:** Investigate the higher observed churn among electronic check users before deciding on payment-related improvements.

6. **Measure Retention Campaign Performance:** Compare churn rates before and after retention initiatives to evaluate their effectiveness.

## 🗂️ Repository Structure

The repository can be organized as follows:

Customer-Churn-Retention-Analysis/
│
├── README.md
├── customer_churn_cleaning.csv
├── customer_churn_Analysis.sql
├── customers_churn & Retention_Analysis.ipynb
├── Customer_Churn_Retention_Analysis.pbit
├── customer_churn_raw.csv
│
└── images/
    └──



*The filenames above are suggested names. Replace them with your actual filenames, and include only files that you upload.*

If the dataset cannot be redistributed, do not upload the CSV. Instead, provide appropriate instructions for obtaining or reproducing the data.

## 🏁 Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, MySQL, and Power BI.

Python was used for initial data cleaning and subsequent exploratory data analysis. MySQL was used to answer 10 business questions and identify customer churn patterns. Power BI was then used to present key metrics and findings through an interactive dashboard.

The analysis identified higher observed churn among month-to-month customers, customers with shorter tenure, fiber optic users, and electronic check users. It also highlighted a high-risk segment with a churn rate of 23.13%.

These findings can help a business prioritize retention efforts, investigate potential customer pain points, and measure the effectiveness of retention strategies.

## 👨‍💻 Author Satendra Kumar

**Data Analytics Portfolio Project**

**Skills Demonstrated:** Python, Pandas, NumPy, Data Cleaning, Exploratory Data Analysis, Data Visualization, MySQL, SQL, Business Analysis, Power BI, DAX, Dashboard Design, and Business Recommendations.
