-- ============================================
-- EMPLOYEE PERFORMANCE & SALARY ANALYSIS
-- Portfolio SQL Project
-- ============================================


-- ============================================
-- CREATE TABLES
-- ============================================

CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    PerformanceScore INT,
    HireDate DATE
);


-- ============================================
-- INSERT SAMPLE DATA
-- ============================================

INSERT INTO Departments VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Operations');

INSERT INTO Employees VALUES
(101, 'Sarah Khan', 1, 28000, 85, '2021-03-15'),
(102, 'David Naidoo', 2, 42000, 92, '2020-06-10'),
(103, 'Lisa Adams', 3, 55000, 96, '2019-01-20'),
(104, 'John Smith', 4, 35000, 78, '2022-07-01'),
(105, 'Michael Jacobs', 3, 60000, 98, '2018-11-12'),
(106, 'Aisha Patel', 2, 39000, 88, '2021-09-18'),
(107, 'Emma Daniels', 1, 30000, 81, '2023-02-14'),
(108, 'Chris Pillay', 4, 37000, 75, '2020-04-22'),
(109, 'Jason Peters', 3, 58000, 94, '2019-08-30'),
(110, 'Natalie Moodley', 2, 41000, 90, '2022-01-05');


-- ============================================
-- QUERY 1
-- AVERAGE SALARY BY DEPARTMENT
-- Demonstrates:
-- SELECT, FROM, INNER JOIN,
-- GROUP BY, AVG, ORDER BY
-- ============================================

SELECT
    d.DepartmentName,
    AVG(e.Salary) AS AvgSalary
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY AvgSalary DESC;


-- ============================================
-- QUERY 2
-- HIGH PERFORMING EMPLOYEES
-- Demonstrates:
-- SELECT, WHERE, ORDER BY
-- ============================================

SELECT
    EmployeeName,
    Salary,
    PerformanceScore
FROM Employees
WHERE PerformanceScore >= 90
ORDER BY PerformanceScore DESC;


-- ============================================
-- QUERY 3
-- EMPLOYEE COUNT BY DEPARTMENT
-- Demonstrates:
-- COUNT, GROUP BY, ORDER BY
-- ============================================

SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY EmployeeCount DESC;


-- ============================================
-- QUERY 4
-- EMPLOYEES EARNING ABOVE
-- COMPANY AVERAGE SALARY
-- Demonstrates:
-- WHERE, AVG, SUBQUERY, ORDER BY
-- ============================================

SELECT
    EmployeeName,
    Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
)
ORDER BY Salary DESC;


-- ============================================
-- QUERY 5
-- DEPARTMENT PERFORMANCE ANALYSIS
-- Demonstrates:
-- AVG, GROUP BY, HAVING, ORDER BY
-- ============================================

SELECT
    d.DepartmentName,
    AVG(e.PerformanceScore) AS AvgPerformance
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
HAVING AVG(e.PerformanceScore) > 80
ORDER BY AvgPerformance DESC;


-- ============================================
-- QUERY 6
-- TOTAL SALARY COST BY DEPARTMENT
-- Demonstrates:
-- SUM, GROUP BY, ORDER BY
-- ============================================

SELECT
    d.DepartmentName,
    SUM(e.Salary) AS TotalSalaryCost
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY TotalSalaryCost DESC;


-- ============================================
-- QUERY 7
-- EMPLOYEE PERFORMANCE CATEGORY
-- Demonstrates:
-- CASE STATEMENT
-- ============================================

SELECT
    EmployeeName,
    PerformanceScore,
    CASE
        WHEN PerformanceScore >= 90 THEN 'High Performer'
        WHEN PerformanceScore >= 80 THEN 'Good Performer'
        ELSE 'Needs Improvement'
    END AS PerformanceCategory
FROM Employees
ORDER BY PerformanceScore DESC;
