USE HR_Analytics;

-- 1. Initial Data Exploration: Verify dataset scale
SELECT COUNT(*) AS Total_Rows 
FROM [HR-Employee-Attrition];

-- 2. Overall Attrition Rate: Calculate the total company-wide employee turnover
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition];

-- 3. Departmental Attrition: Identify which departments have the highest turnover rates
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY Department;

-- 4. Overtime Impact: Analyze if excessive working hours drive employees to resign
SELECT 
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY OverTime;

-- 5. Monthly Income Analysis: Compare average salaries between retained and departed employees
SELECT 
    Attrition,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    MAX(MonthlyIncome) AS Highest_Income,
    MIN(MonthlyIncome) AS Lowest_Income,
    ROUND(AVG(CAST(MonthlyIncome AS FLOAT)), 2) AS Avg_Monthly_Income
FROM [HR-Employee-Attrition]
GROUP BY Attrition;

-- 6. Commute Distance Impact: Evaluate if a longer distance from home affects retention
SELECT 
    Attrition,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    MAX(DistanceFromHome) AS Max_Distance,
    MIN(DistanceFromHome) AS Min_Distance,
    ROUND(AVG(CAST(DistanceFromHome AS FLOAT)), 2) AS Avg_Distance_From_Home
FROM [HR-Employee-Attrition]
GROUP BY Attrition;

-- 7. Job Satisfaction Levels: Measure how low satisfaction scores (1 & 2) correlate with turnover
SELECT 
    JobSatisfaction,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

-- 8. Tenure Impact: Check attrition rates for newer employees (0-4 years at the company)
SELECT 
    YearsAtCompany,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-- 9. Business Travel Frequency: Assess if frequent traveling correlates with higher resignation rates
SELECT 
    BusinessTravel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY BusinessTravel;

-- 10. Promotion Timeline: Analyze the relationship between years since the last promotion and attrition
SELECT 
    YearsSinceLastPromotion,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

-- 11. Managerial Influence: Investigate if the duration spent with the current manager affects attrition per department
SELECT 
    Department,
    YearsWithCurrManager,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
    ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
