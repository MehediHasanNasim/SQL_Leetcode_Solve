-- SQL: 

SELECT U.unique_id, E.name
FROM Employees as E
LEFT JOIN EmployeeUNI as U
ON E.id = U.id


-- Join Employees with EmployeeUNI to get each employee’s unique_id and name.

-- Use LEFT JOIN because not all employees have a unique_id.

-- If there's no match in EmployeeUNI, unique_id will be NULL.

-- Final output should show unique_id and name for all employees.