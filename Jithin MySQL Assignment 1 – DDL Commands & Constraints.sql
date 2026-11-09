DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F') NOT NULL,
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES location(location_id)
);
SHOW TABLES;
DESCRIBE departments;
DESCRIBE location;
DESCRIBE employees;
INSERT INTO departments
(department_id, department_name)
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Credit'),
(4, 'Marketing'),
(5, 'IT');
SELECT * FROM departments;
INSERT INTO location (location)
VALUES
('Thrissur'),
('Kochi'),
('Kozhikode'),
('Palakkad'),
('Trivandrum');
SELECT * FROM location;
INSERT INTO employees
(employee_id, employee_name, gender, age,
hire_date, designation, department_id,
location_id, salary)
VALUES
(101, 'Arun', 'M', 25, '2024-01-10',
'Manager', 1, 1, 35000.00),

(102, 'Anu', 'F', 28, '2023-05-15',
'Accountant', 2, 2, 40000.00),

(103, 'Rahul', 'M', 30, '2022-06-20',
'Credit Officer', 3, 3, 45000.00),

(104, 'Meera', 'F', 24, '2025-02-01',
'Executive', 4, 4, 28000.00),

(105, 'Vishnu', 'M', 32, '2021-03-10',
'IT Officer', 5, 5, 50000.00);
SELECT * FROM employees;
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
DESCRIBE employees;
ALTER TABLE employees
MODIFY COLUMN designation VARCHAR(255);
DESCRIBE employees;
ALTER TABLE employees
DROP COLUMN age;
DESCRIBE employees;
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
DESCRIBE employees;
RENAME TABLE departments
TO Departments_Info;
SHOW TABLES;
RENAME TABLE location
TO Locations;
SHOW TABLES;
SHOW CREATE TABLE employees;
SELECT * FROM employees;
DESCRIBE employees;
SHOW TABLES;
DROP DATABASE employee;
SELECT * FROM employees;
CREATE DATABASE employee;
USE employee;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F') NOT NULL,
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(255),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
SHOW TABLEs;
DESCRIBE employees;
TRUNCATE TABLE employees;
SELECT * FROM employees;
DROP TABLE employees;
SHOW TABLES;
DROP DATABASE employee;