use customer_churn;
select* from customers_churn;

-- Duplicate Check --

select customer_id ,count(*) as duplicate_id
from customers_churn
group by customer_id
having count(*)>1;

-- Note:- There is no duplicate values found 

select count(*) as total_rows 
from customers_churn;

-- Q1. Overall Customer Churn Analysis

-- Total customers
-- Total churned customers
-- Total active customers
-- Overall churn rate (%)


select 
 count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
 (count(*) - sum(case when churn_flag = 1 then 1 else 0 end)) as Total_active_customers,
 round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
 from customers_churn;

 

-- total_customers, total_churned_customer, Total_active_customers, Overall_churn_rate
-- 50000,           7023,                   42977,                   14.05

-- Q2. Region-wise Churn Analysis

-- region, calculate:
-- Total customers
-- Churned customers
-- Churn rate (%)

select  region, 
 count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
from customers_churn
group by region
order by Overall_churn_rate desc;

-- region, total_customers, total_churned_customer, Overall_churn_rate
-- West	   9890	             1422	                 14.38
-- Central	10025	         1434	                 14.30
-- South	10058	         1422	                 14.14
-- North	9962	         1375	                 13.80
-- East	    9852	         1342	                 13.62
-- Unknown	213	             28	                     13.15

 -- Q3,Contract Type Analysis

-- For each contract type, calculate:

-- Total customers
-- Churned customers
-- Churn rate (%)

select  contract_type, 
 count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
from customers_churn
group by contract_type
order by Overall_churn_rate desc;

-- contract_type, total_customers, total_churned_customer, Overall_churn_rate
-- Month-to-month	28025	       5211	                   18.59
-- Unknown	        95	           15	                   15.79
-- One year	        13376	       1319                 	9.86
-- Two year	        8504	       478	                    5.62

-- Q4. Senior Citizen Churn Analysis
-- Compare senior citizens and non-senior citizens based on:
-- Total customers
-- Churned customers
-- Churn rate (%)

select senior_citizen,
  count(*) as total_customers,
 SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
 from customers_churn
 group by senior_citizen;
 
 
-- senior_citizen, total_customers, total_churned_customer, Overall_churn_rate
-- 0	           37245	        5052	                13.56
-- 1	           12755	        1971	                15.45
-- Q5. Q5. Internet Service Analysis
-- For each internet service type, calculate:

-- Total customers
-- Churned customers
-- Churn rate (%)

select internet_service, 
 count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
 from customers_churn
 group by internet_service; 
 
-- internet_service, total_customers, total_churned_customer, Overall_churn_rate
-- Fiber optic	     23854	           3892	                  16.32
-- DSL	             18607	           2238	                  12.03
-- No internet	     7539	           893	                  11.85

-- Q6. Tenure Group Analysis
-- Create these tenure groups:

-- New Customers: 0–6 months
-- Medium-Term Customers: 7–12 months
-- Long-Term Customers: 13–18 months
-- Very Long-Term Customers: 19–23 months 

select 
  case 
   when tenure_months  between 0 and 6 then '0–6 months'
   when tenure_months  between 7 and 12 then '7–12 months'
   when tenure_months  between 13 and 18 then '13–18 months'
   when tenure_months  between 19 and 23 then '19–23 months'
   end as tenure_group,
    count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
 from customers_churn
 group by tenure_group
 order by Overall_churn_rate desc;
 
-- tenure_group, total_customers, total_churned_customer, Overall_churn_rate
-- 0–6 months	 14601	          2303	                   15.77
-- 19–23 months	 10419	          1432	                   13.74
-- 13–18 months	 12515	          1681	                   13.43
-- 7–12 months	 12465	          1607	                   12.89

-- Q7. Monthly Charges Analysis

-- Low Charges: Below 30
-- Medium Charges: 30–60
-- High Charges: Above 60

select
case 
    when monthly_charges is null then 'Unknown'
   when monthly_charges < 30 then 'Low Charges'
   when monthly_charges between 30 and 60 then 'Medium Charges'
   when monthly_charges > 60 then 'High Charges'
   end as Monthly_Charges_Group,
       count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
from customers_churn
group by Monthly_Charges_Group
order by Overall_churn_rate desc;

-- Monthly_Charges_Group, total_customers, total_churned_customer, Overall_churn_rate
-- 	Unknown                      15	           5	                   33.33
-- High Charges	              24559        	4077	                   16.60
-- Medium Charges	          21272	         2511	                   11.80
-- Low Charges                4154	         430	                   10.35


-- Q8. Payment Method Analysis

-- Total customers
-- Churned customers
-- Churn rate (%)

select 
     payment_method,
     count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
 from customers_churn
 group by payment_method;
 
-- payment_method, total_customers, total_churned_customer, Overall_churn_rate
-- Electronic check	16916	        2722	                16.09
-- Bank transfer	13534	        1732	                12.80
-- Mailed check 	6814	        860                   	12.62
-- Credit card	    12449	        1675	                13.45
-- Unknown	        287	            34	                    11.85

-- Q9. Support Tickets and Churn
-- Zero support tickets
-- 1–2 support tickets
-- 3 or more support tickets

select
     case
    WHEN support_tickets IS NULL THEN 'Unknown'
    WHEN support_tickets = 0 THEN 'Zero Tickets'
    WHEN support_tickets BETWEEN 1 AND 2 THEN '1-2 Tickets'
    WHEN support_tickets >= 3 THEN '3+ Tickets'
    END as support_tickets_category,
            count(*) as total_customers,
 sum(case when churn_flag = 1 then 1 else 0 end) as total_churned_customer,
  round( sum(case when churn_flag = 1 then 1 else 0 end)/count(*)* 100, 2) as Overall_churn_rate
  from customers_churn
  group by support_tickets_category
  order by Overall_churn_rate desc;
  
  
-- support_tickets_category, total_customers, total_churned_customer, Overall_churn_rate
-- 3+ Tickets	             9594           	1573	              16.40
-- 1-2 Tickets	             29149	            4027	              13.82
-- Zero Tickets	             11247	            1422	              12.64
-- Unknown	                 10             	1	                  10.00

-- Q10. High-Risk Customer Identification
-- Identify customers who meet all three conditions:

-- Month-to-month contract
-- Monthly charges above 60
-- Tenure of 6 months or less


SELECT
    COUNT(*) AS total_high_risk_customers,
    SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churn_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS churn_rate_pct
FROM customers_churn
WHERE contract_type = 'Month-to-month'
  AND monthly_charges > 60
  AND tenure_months <= 6;
  
-- total_high_risk_customers, churned_customers, churn_rate_pct
-- 4552	                      1053	             23.13

 -- ================ Business Recommendations ========================
 
### 1. Improve Month-to-Month Customer Retention

-- Month-to-month customers have an 18.59% churn rate, compared with 5.62% for two-year contract customers.
-- The company should test long-term contract incentives, personalized retention offers, 
-- and suitable plan upgrades to improve customer retention.

### 2. Strengthen New Customer Onboarding

-- Customers with 0–6 months of tenure have a 15.77% churn rate,
-- the highest among the analyzed tenure groups. The company should introduce structured onboarding, 
-- early satisfaction check-ins, and proactive support during the first six months.

### 3. Investigate Fiber Optic Customer Churn

-- Fiber optic customers have a 16.32% churn rate, compared with 12.03% for DSL customers. 
-- The company should investigate customer feedback, pricing, service reliability, 
-- and support experiences before implementing targeted service improvements.

### 4. Launch a Targeted High-Risk Retention Campaign

-- The selected high-risk segment contains 4,552 customers and has a 23.13% churn rate,
-- compared with the overall rate of 14.05%. The company should test targeted retention 
-- offers and proactive support for this segment, then measure campaign effectiveness by
--  comparing churn rates before and after the intervention.

-- Mysql Analysis Completed Successfully ...! ✅ 
