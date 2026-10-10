# 👥 HR Workforce Analytics & Attrition Project

A comprehensive, end-to-end human resources analytics and employee attrition investigation project using **T-SQL (SQL Server)** and **Power BI** to uncover root causes of staff turnover and deliver actionable retention insights.

---

## 📂 Repository Structure & Project Files

This repository contains all the necessary resources to explore, run, and review the project locally or directly through GitHub:

* 📊 **Interactive Power BI Report:** [`HR Attrition Analysis.pbix`](./HR%20Attrition%20Analysis.pbix) *(Download & open in Power BI Desktop for full interactivity)*
* 📜 **SQL Analysis Script:** [`HR_Analytics.sql`](./HR_Analytics.sql) *(T-SQL queries for data cleaning, aggregation & key metrics)*
* 🖼️ **Executive Dashboards:** [`HR Attrition Dashboard 1-4.png`](#-dashboard-preview) *(High-resolution preview screenshots)*

---

## 📌 Project Overview
Employee attrition is a critical challenge for organizational growth. This project analyzes a workforce dataset of **1,470 employees** to investigate turnover patterns, department distributions, overtime impacts, job satisfaction levels, and leadership influences. The findings are modeled into an interactive 4-page Power BI dashboard suite to guide strategic HR decision-making.

---

## 🔍 Key Data Analysis Steps (T-SQL Implementation)

1. **Overall Attrition & Baseline Metrics:**
   - Evaluated total workforce size and computed the overall employee turnover percentage.

2. **Department & Overtime Impact:**
   - Analyzed resignation rates across departments (e.g., Sales, Research & Development) and evaluated the direct impact of overtime hours on attrition.

3. **Compensation & Distance Analysis:**
   - Investigated monthly income distributions and commute distances (`DistanceFromHome`) to determine their correlation with employee departures.

4. **Job Satisfaction & Tenure Evaluation:**
   - Assessed job satisfaction scores and employee tenure (`YearsAtCompany`, `YearsSinceLastPromotion`, `YearsWithCurrManager`) to identify critical risk windows for resignations.

---

## 📊 Dashboard Preview

Below are high-resolution snapshots of the interactive **Power BI** dashboard pages included in this repository:

### 1. Workforce Overview & Attrition KPIs
![HR Attrition Dashboard 1](./HR%20Attrition%20Dashboard%201.png)

### 2. Department & Job Role Breakdown
![HR Attrition Dashboard 2](./HR%20Attrition%20Dashboard%202.png)

### 3. Employee Demographics & Satisfaction Insights
![HR Attrition Dashboard 3](./HR%20Attrition%20Dashboard%203.png)

### 4. Leadership & Tenure Analysis
![HR Attrition Dashboard 4](./HR%20Attrition%20Dashboard%204.png)

---

## 🛠️ Technologies Used
* **SQL Server (T-SQL):** Advanced aggregations, conditional statements (`CASE WHEN`), statistical metrics (`MAX`, `MIN`, `AVG`), and group-by analytics.
* **Power BI Desktop:** Multi-page interactive executive dashboards, workforce modeling, DAX measures, and visual storytelling.
* **Git & GitHub:** Version control, file management, and professional project documentation.

---

## 🚀 How to Run & Use
1. **Clone or Download:** Clone this repository to your local machine.
2. **Database Setup:** Import the employee attrition dataset into your SQL Server database.
3. **Run SQL Pipeline:** Execute the [`HR_Analytics.sql`](./HR_Analytics.sql) script sequentially to perform the data analysis.
4. **Interactive Dashboard:** Download and open the [`HR Attrition Analysis.pbix`](./HR%20Attrition%20Analysis.pbix) file in **Power BI Desktop** to interact with the visualizations and filters directly.
