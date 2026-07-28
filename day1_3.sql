-- Show databases
SHOW DATABASES;

-- Create database
CREATE DATABASE office_db;

-- Use database
USE office_db;
show tables;
drop table employees;

-- Create table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    department VARCHAR(30),
    salary INT
);

-- Insert data
INSERT INTO employees (name, age, department, salary) VALUES
('Kabir', 28, 'Sales', 42000),
('Simran', 31, 'IT', 65000),
('Vikram', 26, 'HR', 38000),
('Anjali', 29, 'IT', 71000),
('Sunil', 34, 'Sales', 45000);

-- View all data
SELECT * FROM employees;

-- Select specific columns
SELECT name FROM employees;
SELECT name, salary FROM employees;

-- WHERE conditions
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE id = 2;
SELECT * FROM employees WHERE department = 'IT' AND salary > 65000;
SELECT * FROM employees WHERE department = 'IT' OR salary > 65000;
SELECT * FROM employees WHERE NOT department = 'IT';

-- DISTINCT = Unique values
select * from employees;
SELECT DISTINCT department FROM employees;
SELECT DISTINCT age FROM employees;

-- ORDER BY
SELECT * FROM employees ORDER BY salary;
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- BETWEEN = range
select * from employees;
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 70000;
SELECT * FROM employees WHERE age BETWEEN 26 AND 31;
SELECT * FROM employees WHERE department = 'IT' AND salary BETWEEN 60000 AND 75000;

-- IN = check the exact value
select * from employees;
SELECT * FROM employees WHERE department IN ('IT', 'HR');
SELECT * FROM employees WHERE age IN (28, 34);
SELECT * FROM employees WHERE id IN (1, 3, 5);

-- LIKE
select * from employees;
SELECT * FROM employees WHERE name LIKE 'S%';
SELECT * FROM employees WHERE name LIKE '%r';
SELECT * FROM employees WHERE name LIKE '%an%';
SELECT * FROM employees WHERE department LIKE '__';

-- NULL handling
select * from employees;
UPDATE employees SET department = NULL WHERE id = 5;
SELECT * FROM employees WHERE department IS NULL;
SELECT * FROM employees WHERE department IS NOT NULL;

-- Aggregate functions
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM employees WHERE department = 'IT';
SELECT COUNT(*) FROM employees WHERE salary > 40000;

select * from employees;
SELECT SUM(salary) as Total_salary FROM employees;
SELECT SUM(salary) FROM employees WHERE department = 'IT';

SELECT AVG(salary) FROM employees;
SELECT AVG(salary) FROM employees WHERE department = 'IT';

select * from employees;
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;

SELECT MIN(age) FROM employees;
SELECT MAX(age) FROM employees;

-- GROUP BY
SELECT department, COUNT(*) FROM employees GROUP BY department;
SELECT department, AVG(salary) FROM employees GROUP BY department;
SELECT department, MAX(salary) FROM employees GROUP BY department;
SELECT department, SUM(salary) FROM employees GROUP BY department;

-- HAVING
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;

SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT department, MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 60000;
