USE healthcare;
select * from healthcare_data;
select count(*) from healthcare_data;

-- TOTAL REVENUE
SELECT SUM(Billing_amount) AS Total_revenue
FROM healthcare_data;

-- MOST COMMM0N MEDICAL CONDITION
SELECT Medical_condition,
COUNT(*) AS Total_patients
FROM healthcare_data
GROUP BY medical_condition
ORDER BY total_patients DESC;

-- AVERAGE BILLING BY INSURANCE PROVIDER
SELECT Insurance_provider,
AVG(Billing_amount) AS Avg_billing
FROM healthcare_data
GROUP BY Insurance_provider;

-- GENDER DISTRIBUTION
SELECT gender,
COUNT(*) AS Total
FROM healthcare_data
GROUP BY gender;

-- LONGEST HOSPITAL STAY
SELECT Name,
DATEDIFF(Discharge_date, Date_of_admission) AS Days_stayed
FROM healthcare_data
ORDER BY Days_stayed DESC;
-- OR
select Name, Length_of_stay
from healthcare_data
order by Length_of_stay desc;

-- CASE
select gender, age,
case
 when age > 40 then 'Elder'
else 'Young'
end as age_categoryy
from healthcare_data;

-- VIEW
CREATE VIEW high_billing_patients AS
SELECT *
FROM healthcare_data
WHERE billing_amount > 30000;
