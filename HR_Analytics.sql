USE HR_Analytics;

SELECT * FROM [HR-Employee-Attrition];
-- عدد الاسطر
SELECT COUNT(*) AS Total_Rows FROM [HR-Employee-Attrition];

--نسبه الاستقالات الاجماليه
SELECT COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END )AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END )AS FLOAT )/ COUNT(*) * 100,2)AS Attrition_Percentage
FROM [HR-Employee-Attrition];

--عدد الاستقالات ونسبتهم حسب الاقسام
SELECT Department,
COUNT(*) AS Total_Employees,SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END ) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT)/ COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY Department;

--عدد الاستقالات ونسبتهم حسب ساعات العمل الاضافيه
--احد الاسباب التى ادت الي استقاله الموظفين 
SELECT OverTime,
COUNT(*) AS Total_Employees,SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END ) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT)/ COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY OverTime;

--علاقه المرتب الشهري بالاستقالات
SELECT Attrition,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END ) AS Left_Employees,
MAX(MonthlyIncome) AS Highest_Income,
MIN(MonthlyIncome) AS Lowest_Income,
ROUND(AVG(CAST(MonthlyIncome AS FLOAT)),2) AS Avg_Monthly_Income
FROM [HR-Employee-Attrition]
GROUP BY Attrition;

--تأثير المسافه بين الشركه ومسكن الموظف وتأثيره على عدد الاستقالات
SELECT Attrition,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
MAX(DistanceFromHome) AS Max_Distance,
MIN(DistanceFromHome) AS Min_Distance,
ROUND(AVG(CAST(DistanceFromHome AS FLOAT)),2) AS Avg_Distance_From_Home
FROM [HR-Employee-Attrition]
GROUP BY Attrition;

--الرضا الوظيفي وتأثيره على نسبه الاستقالات
--احد الاسباب التي اتدت الي استقاله الموظفين الذين يملكون رضا وظيفين 1و2
SELECT JobSatisfaction,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT)/COUNT(*) * 100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

--عدد سنوات البقاء في الشركه وتأثيرها على نسبه الاستقالات
--الاشخاص الذين قضو مده بين 0 سنه و4 سنين نسبه استقالتهم عاليه 
SELECT YearsAtCompany,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT)/COUNT(*) * 100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-- سفر الموظفين وتأثيره على نسبه استقالاتهم
-- الذين يسافرون كثيرا هم اكثر اشخاص يستقيلون
SELECT BusinessTravel,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT)/COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY BusinessTravel;

--تأثير الترقيات على استقالات الموظفين
--الاشخاص في اول 3 سنوات يستقيلون
SELECT YearsSinceLastPromotion,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT)/COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

--علاقه المدير باستقالات الموظفين 
--المدير احد الاسباب
--اقسام المبيعات والبحث والتطوير اكثر الاقسام استقاله للموظفين بسبب مديري الاقسام
SELECT Department,YearsWithCurrManager,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) /COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY Department,YearsWithCurrManager
ORDER BY YearsWithCurrManager;

--علاقه زياده المرتب الاخيره بنسبه الاستقالات
--ليس من اسباب الاستقاله
SELECT PercentSalaryHike,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) /COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY PercentSalaryHike
ORDER BY PercentSalaryHike;

-- رضاالموظف عن بيئه العمل والاستقالات
SELECT EnvironmentSatisfaction,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) /COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;

--مين بيستقيل اكتر الذكور ام الاناث
SELECT Gender,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) /COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY Gender;

--السن الاكثر استقاله
--ليست من اسباب الاستقاله
SELECT Age,
COUNT(*) AS Total_Employees,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS Left_Employees,
ROUND(CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) /COUNT(*) *100,2) AS Attrition_Percentage
FROM [HR-Employee-Attrition]
GROUP BY Age
ORDER BY Age;


