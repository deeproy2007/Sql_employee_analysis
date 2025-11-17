use student;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10, 2),
    joining_date DATE
);

INSERT INTO employees (id, name, department, salary, joining_date) VALUES
(1, 'Alice', 'HR', 45000.00, '2023-02-15'),
(2, 'Bob', 'Finance', 60000.00, '2022-08-01'),
(3, 'Charlie', 'Sales', 52000.00, '2024-01-20'),
(4, 'David', 'Marketing', 47000.00, '2025-03-05'),
(5, 'Eva', 'Finance', 58000.00, '2021-11-11'),
(6, 'Frank', 'HR', 39000.00, '2020-07-30'),
(7, 'Grace', 'Sales', 81000.00, '2025-01-01'),
(8, 'Helen', 'Marketing', 72000.00, '2023-06-15'),
(9, 'Ian', 'IT', 67000.00, '2024-05-10'),
(10, 'Jane', 'HR', 43000.00, '2022-12-19');

-- 1.	Display employees from HR department earning more than ₹30,000.
SELECT 
    *
FROM
    employees
WHERE
    department = 'HR' AND salary > 30000;
    -- 2.	Display employees whose salary is between ₹40,000 and ₹80,000.
SELECT 
    id, name, salary
FROM
    employees
WHERE
    salary BETWEEN 40000 AND 80000;
   -- 3.	List employees whose department is either Marketing, or IT.
  SELECT 
    *
FROM
    employees
WHERE
    department IN ('IT' , 'Marketing');
  -- 4.	Show employees whose name starts with ‘J’ or ends with ‘e’.
SELECT 
    *
FROM
    employees
WHERE
    name LIKE 'J%' OR name LIKE '%e';
-- 5.	Display employees whose name contains ‘li’ anywhere. 
SELECT 
    *
FROM
    employees
WHERE
    name LIKE '%li%';
-- 6.	List all employees ordered by salary in descending order. 
SELECT 
    *
FROM
    employees
ORDER BY salary DESC;
-- 7.	List all departments in the company without duplicates.   
SELECT DISTINCT
    department
FROM
    employees;
-- 8.	Display employees ordered by department (A–Z) and within department, by salary (highest first). 
SELECT 
    department, SUM(salary) AS sum_of_salary
FROM
    employees
GROUP BY department
ORDER BY department ASC , sum_of_salary DESC
LIMIT 3;
-- 9.	Find the total salary paid to all employees.  
SELECT 
    SUM(salary) AS total_salary
FROM
    employees;
   -- 10.	Find the average salary of employees.
SELECT 
    AVG(salary) AS avg_salary
FROM
    employees;
-- 11.	Find the highest and lowest salary in the table.
SELECT 
    MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM
    employees;
-- 12.	Count the total number of employees in the table.
SELECT 
    COUNT(id)
FROM
    employees;
   -- 13.	Display each department along with:total number of employees, andaverage salary.(Hint: Use GROUP BY)
SELECT 
    department, COUNT(*), AVG(salary) AS avg_salary
FROM
    employees
GROUP BY department;
-- 14.	From the above result, show only departments having 2 or more employees. (Hint: Use HAVING)
SELECT 
    department, COUNT(*) AS employee_count
FROM
    employees
GROUP BY department
HAVING COUNT(*) >= 2;
-- 15.	List top 3 highest-paid employees using ORDER BY and LIMIT.
SELECT 
    *
FROM
    employees
ORDER BY salary DESC
LIMIT 3;
-- 16.	Write a single query that:filters employees with salary between ₹40,000 and ₹80,000,belongs to HR, Finance, or Marketing,groups them by department,andshows only departments having more than 1 e
SELECT 
    department, COUNT(*) AS employee_count
FROM
    employees
WHERE
    salary BETWEEN 40000 AND 80000
        AND department IN ('HR' , 'Finance', 'Marketing')
GROUP BY department
HAVING COUNT(*) > 1;
