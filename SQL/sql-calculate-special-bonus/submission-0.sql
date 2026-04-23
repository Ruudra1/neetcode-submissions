-- Write your query below
-- Employees who qualify for the bonus
SELECT 
    employee_id, 
    salary AS bonus
FROM employees
WHERE employee_id % 2 != 0 
  AND name NOT LIKE 'M%'

UNION

-- Employees who do NOT qualify (bonus is 0)
SELECT 
    employee_id, 
    0 AS bonus
FROM employees
WHERE employee_id % 2 = 0 
   OR name LIKE 'M%'

ORDER BY employee_id;