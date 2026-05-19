-- ============================================
-- AVERAGE SALARY BY DEPARTMENT
-- ============================================

SELECT
    d.DepartmentName,
    AVG(e.Salary) AS AvgSalary
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY AvgSalary DESC;
