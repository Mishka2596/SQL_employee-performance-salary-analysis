# Employee Performance & Salary Analysis

## Project Overview

This project analyses employee performance, salaries, departmental trends, and workforce insights using SQL.

The project simulates a real HR analytics environment where business intelligence techniques are used to answer operational and workforce-related business questions.

The goal of the project is to demonstrate SQL querying, data analysis, and reporting skills using realistic HR data.

---

## Tools Used

- SQL
- Excel / CSV
- Power BI
- GitHub

---

## SQL Skills Demonstrated

- SELECT
- FROM
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- INNER JOIN
- Aggregate Functions
- CASE Statements
- Subqueries

---

## Dataset Structure

### Departments Table
- DepartmentID
- DepartmentName

### Employees Table
- EmployeeID
- EmployeeName
- DepartmentID
- Salary
- PerformanceScore
- HireDate

---

## Business Questions Answered

1. Which departments have the highest average salaries?
2. Which employees are classified as high performers?
3. How many employees are in each department?
4. Which employees earn above the company average salary?
5. Which departments have the strongest average performance scores?
6. Which departments have the highest total salary costs?
7. How can employees be categorised based on performance scores?

---

## SQL Analysis Performed

### 1. Average Salary by Department
Used aggregate functions and GROUP BY to calculate the average salary for each department.

### 2. High Performing Employees
Filtered employees with performance scores greater than or equal to 90 using the WHERE clause.

### 3. Employee Count by Department
Counted employees within each department using COUNT() and GROUP BY.

### 4. Employees Earning Above Average Salary
Used a subquery to identify employees earning above the company-wide average salary.

### 5. Department Performance Analysis
Used HAVING to filter departments with average performance scores above 80.

### 6. Total Salary Cost by Department
Calculated total departmental salary expenses using SUM().

### 7. Employee Performance Categorisation
Used a CASE statement to categorise employees as:
- High Performer
- Good Performer
- Needs Improvement

---

## Key Findings

- The IT department had the highest average salary.
- IT employees also achieved the strongest average performance scores.
- Several employees earned significantly above the organisational salary average.
- Finance and IT departments contributed the highest overall salary costs.
- Performance categorisation provided clearer workforce segmentation for reporting purposes.

---

## Potential Power BI Dashboard Visuals

- KPI Cards
  - Total Employees
  - Average Salary
  - Average Performance Score

- Bar Charts
  - Average Salary by Department
  - Employee Count by Department
  - Total Salary Cost by Department

- Tables
  - High Performing Employees
  - Employees Above Average Salary

- Donut/Pie Charts
  - Performance Categories

- Ranking Visuals
  - Top Earning Employees
  - Highest Performing Departments

---

## Project Purpose

This project was created to strengthen practical SQL and business intelligence skills by analysing realistic HR data and converting raw employee information into actionable workforce insights.

The project demonstrates the ability to:
- write structured SQL queries
- analyse business data
- perform workforce reporting
- prepare datasets for Power BI dashboards
- communicate findings through data analysis

```
