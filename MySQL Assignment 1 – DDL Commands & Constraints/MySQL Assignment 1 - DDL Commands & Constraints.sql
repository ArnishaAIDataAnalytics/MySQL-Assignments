/*=====================================================
    MYSQL ASSIGNMENT 1 - DDL COMMANDS & CONSTRAINTS
=====================================================*/

/*=====================================================
    QUESTION 1 - CREATE DATABASE
=====================================================*/

-- Create Employee Database
CREATE DATABASE employee;

-- Select Employee Database
USE employee;

/*=====================================================
    QUESTION 1 - CREATE TABLES
=====================================================*/

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);

-- Create Location Table
CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);

/*=====================================================
    QUESTION 2 - ALTER TABLE OPERATIONS
=====================================================*/

-- Add Email Column to Employees Table
ALTER TABLE Employees
ADD email VARCHAR(100);

-- Modify Designation Column Size
ALTER TABLE Employees
MODIFY designation VARCHAR(200);

-- Drop Age Column from Employees Table
ALTER TABLE Employees
DROP COLUMN age;

-- Rename hire_date Column to date_of_joining
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

/*=====================================================
    QUESTION 3 - RENAME TABLES
=====================================================*/

-- Rename Departments Table to Departments_Info
RENAME TABLE Departments TO Departments_Info;

-- Rename Location Table to Locations
RENAME TABLE Location TO Locations;

/*=====================================================
    QUESTION 4 - TRUNCATE TABLE
=====================================================*/

-- Remove All Records from Employees Table
TRUNCATE TABLE Employees;

/*=====================================================
    QUESTION 5 - DROP TABLE & DATABASE
=====================================================*/

-- Drop Employees Table
DROP TABLE Employees;

-- Drop Employee Database
DROP DATABASE employee;

/*=====================================================
    CONSTRAINTS SECTION
=====================================================*/

/*=====================================================
    CONSTRAINT QUESTION 1
    DROP & RECREATE DATABASE
=====================================================*/

-- Drop Database if Already Exists
DROP DATABASE IF EXISTS employee;

-- Recreate Database
CREATE DATABASE employee;

-- Select Database
USE employee;

/*=====================================================
    CONSTRAINT QUESTION 2
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
    CONSTRAINT QUESTION 3
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
    CONSTRAINT QUESTION 4
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
    END OF ASSIGNMENT
=====================================================*/