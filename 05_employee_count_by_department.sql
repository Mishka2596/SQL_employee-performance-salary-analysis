-- ============================================
-- EMPLOYEE COUNT BY DEPARTMENT
-- ============================================

SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Employees e
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY EmployeeCount DESC;
