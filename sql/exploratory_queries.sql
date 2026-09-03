-- Headcount by department: see how employees are distributed across departments
SELECT Department, COUNT(*) AS headcount
FROM employees
GROUP BY Department;

-- Average salary by department: compare pay levels across departments
SELECT Department, ROUND(AVG(Salary),2) AS avg_salary
FROM employees
GROUP BY Department;

-- Active vs Terminated headcount: understand overall workforce stability
SELECT EmploymentStatus, COUNT(*) AS count
FROM employees
GROUP BY EmploymentStatus;

-- Termination reasons breakdown: identify why people are leaving
SELECT TermReason, COUNT(*) AS count
FROM employees
WHERE TermReason != 'N/A-StillEmployed'
GROUP BY TermReason
ORDER BY count DESC;
