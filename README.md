# 👥 HR Workforce Analytics & Attrition Project

A comprehensive, end-to-end human resources analytics and employee attrition investigation project using **T-SQL (SQL Server)** and **Power BI** to uncover root causes of staff turnover and deliver actionable retention insights.

---

## 📌 Project Overview
Employee attrition is a critical challenge for organizational growth. This project analyzes a workforce dataset of 1,470 employees to investigate turnover patterns, department distributions, overtime impacts, job satisfaction levels, and leadership influences[cite: 14, 17]. The findings are modeled into an interactive Power BI dashboard suite to guide strategic HR decision-making[cite: 16, 17, 18, 19].

---

## 🔍 Key Data Analysis Steps (T-SQL Implementation)

1. **Overall Attrition & Baseline Metrics:**
   - Evaluated total workforce size and computed the overall employee turnover percentage[cite: 14].

2. **Department & Overtime Impact:**
   - Analyzed resignation rates across departments (e.g., Sales, Research & Development) and evaluated the direct impact of overtime hours on attrition[cite: 14].

3. **Compensation & Distance Analysis:**
   - Investigated monthly income distributions and commute distances (`DistanceFromHome`) to determine their correlation with employee departures[cite: 14].

4. **Job Satisfaction & Tenure Evaluation:**
   - Assessed job satisfaction scores and employee tenure (`YearsAtCompany`, `YearsSinceLastPromotion`, `YearsWithCurrManager`) to identify critical risk windows for resignations[cite: 14].

---

## 📊 Power BI Dashboard Highlights
The analytical findings are visualized across a multi-page executive report (`HR Attrition 1-4.png`) featuring:
- **Core Workforce KPIs:** Total Employees (1,470), Total Attrition (237), Overall Attrition Rate (16.12%), and Overtime Attrition (31%)[cite: 17].
- **Root Cause & Department Insights:** Breakdown of attrition by job roles (Laboratory Technician, Sales Executive, Research Scientist), business travel frequency, and marital status[cite: 18].
- **Leadership & Satisfaction Metrics:** Visualizations connecting low job satisfaction scores and management duration with employee turnover peaks within the first 4 years of tenure[cite: 19].

---

## 🛠️ Technologies Used
- **SQL Server (T-SQL):** Advanced aggregations, conditional statements (`CASE WHEN`), statistical metrics (`MAX`, `MIN`, `AVG`), and group-by analytics[cite: 14].
- **Power BI:** Multi-page interactive executive dashboards, workforce modeling, and visual storytelling[cite: 16, 17, 18, 19].
- **Git & GitHub:** Version control and professional portfolio documentation.

---

## 🚀 How to Use
1. Clone or download this repository.
2. Import the employee attrition dataset into your SQL Server database (`HR_Analytics`)[cite: 14].
3. Run the `HR_Analytics.sql` script sequentially to execute the full data investigation pipeline[cite: 14].
