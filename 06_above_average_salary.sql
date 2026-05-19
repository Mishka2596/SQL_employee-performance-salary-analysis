-- ============================================
-- EMPLOYEES EARNING ABOVE COMPANY AVERAGE
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
