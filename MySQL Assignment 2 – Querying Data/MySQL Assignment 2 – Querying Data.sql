-- Drop Database if Already Exists
DROP DATABASE IF EXISTS employee;

-- Recreate Database
CREATE DATABASE employee;

-- Select Database
USE employee;

/*=====================================================
    CREATE DEPARTMENTS TABLE
=====================================================*/

-- Create Departments Table
-- department_id = Primary Key
-- department_name = Unique and Not Null

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

/*=====================================================
    CREATE LOCATION TABLE
=====================================================*/

-- Create Location Table
-- location_id = Auto Increment Primary Key
-- location = Unique and Not Null

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

/*=====================================================
    CREATE EMPLOYEES TABLE
=====================================================*/

-- Create Employees Table with Constraints
-- Employee ID must be unique
-- Employee Name cannot be null
-- Gender can only be M or F
-- Employee age must be 18 or above
-- Automatically assign current date if no value is provided
-- Employee Designation
-- Foreign Key Reference to Departments Table
-- Foreign Key Reference to Location Table
-- Employee Salary
-- Foreign Key Constraint for Department
-- Foreign Key Constraint for Location

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    CONSTRAINT fk_department
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),
    CONSTRAINT fk_location
    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

/*=====================================================
    INSERT DATA INTO TABLES
=====================================================*/

-- Insert records into the Departments table

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

-- Insert records into the Location table

INSERT INTO location (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

-- Insert records into the Employees table

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

/*=====================================================
    SELECT QUERIES
=====================================================*/

-- Retrieve a list of unique salary from the Employees table

SELECT DISTINCT salary FROM Employees;

-- Retrieve employee ages and salaries with custom column aliases

SELECT age AS Employee_Age, salary AS Employee_Salary FROM Employees;

-- Retrieve all details of employees earning over 50,000 who were hired before 2016

SELECT * FROM Employees 
WHERE salary > 50000 AND hire_date < '2016-01-01';

/*=====================================================
    NULL VALUE HANDLING & UPDATES
=====================================================*/

-- Find all employees who do not have a designation assigned (NULL or empty string)

SELECT * from Employees 
WHERE designation IS NULL OR designation = '';

-- Update NULL or empty designations to 'Data Scientist'

UPDATE Employees 
SET designation = 'Data Scientist' 
WHERE designation IS NULL OR designation = '';

-- Verify the update by retrieving the designation of the employee using the employee_id obtained from the SELECT query executed before the update.

SELECT * from Employees 
WHERE employee_id = 5004;

/*=====================================================
    SORTING & LIMITING DATA
=====================================================*/

-- Retrieve all employees sorted by department ID in ascending order, 
-- and then by salary in descending order within each department

SELECT * FROM Employees 
ORDER BY department_id ASC, salary DESC;

-- Retrieve the first 5 employees hired in the year 2018, ordered chronologically

SELECT * FROM Employees 
WHERE YEAR(hire_date) = 2018 
ORDER BY hire_date ASC 
LIMIT 5;

/*=====================================================
    AGGREGATION FUNCTIONS
=====================================================*/

-- Calculate the total salary payout for the Finance department using a subquery

SELECT SUM(salary) 
FROM Employees 
WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Finance');

-- Find the age of the youngest employee in the company

SELECT MIN(age) FROM Employees;

/*=====================================================
    GROUPING & FILTERING WITH HAVING
=====================================================*/

-- Find the highest salary paid in each location

SELECT location_id, MAX(salary) AS Max_Salary 
FROM Employees 
GROUP BY location_id;

-- Calculate the average salary for all designations containing the word 'Analyst'

SELECT designation, AVG(salary) AS Average_Salary 
FROM Employees 
WHERE designation LIKE '%Analyst%' 
GROUP BY designation;

-- Find departments that have fewer than 3 employees assigned to them

SELECT department_id, COUNT(*) AS Employee_Count 
FROM Employees 
GROUP BY department_id 
HAVING Employee_Count < 3;

-- Find locations where the average age of female employees is under 30

SELECT location_id 
FROM Employees 
WHERE gender = 'F' 
GROUP BY location_id 
HAVING AVG(age) < 30;

/*=====================================================
    JOINS
=====================================================*/

-- Retrieve employee names and designations along with their corresponding department names (Inner Join)

SELECT e.employee_name, e.designation, d.department_name 
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.department_id;

-- Count the total number of employees in each department, including departments with zero employees (Left Join)

SELECT d.department_name, COUNT(e.employee_id) AS Total_Employees 
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Retrieve all locations and the names of employees working there, including locations with no employees (Right Join)

SELECT l.location, e.employee_name AS Employee_Name
FROM Employees e
RIGHT JOIN Location l ON e.location_id = l.location_id;

/*=====================================================
    END OF ASSIGNMENT
=====================================================*/