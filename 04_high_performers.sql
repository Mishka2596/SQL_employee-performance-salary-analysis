-- ============================================
-- HIGH PERFORMING EMPLOYEES
-- ============================================

SELECT
    EmployeeName,
    Salary,
    PerformanceScore
FROM Employees
WHERE PerformanceScore >= 90
ORDER BY PerformanceScore DESC;
