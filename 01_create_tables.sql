-- ============================================
-- CREATE TABLES
-- Employee Performance & Salary Analysis
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
