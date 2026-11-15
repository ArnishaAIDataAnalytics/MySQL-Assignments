# MySQL Assignment 2 – Querying Data

This assignment practices querying employee data using the database and tables introduced in MySQL Assignment 1. The accompanying SQL script contains the schema and sample data setup, followed by the assignment queries.

## Run the assignment

1. Open `MySQL Assignment 2 – Querying Data.sql` in a MySQL client such as MySQL Workbench.
2. Review the setup statements before running the script. It drops and recreates the `employee` database, so do not run it against a database containing data you need to keep.
3. Execute the script, then review each query and its result. The script creates the `Departments`, `Location`, and `Employees` tables, inserts sample rows, and runs the queries.

## Tasks covered

- Select distinct salaries and display age and salary with the aliases `Employee_Age` and `Employee_Salary`.
- Filter employees by salary greater than ₹50,000 and hire date before `2016-01-01`.
- Find employees with a missing designation, update it to `Data Scientist`, and verify the update.
- Sort employees by department ID ascending and salary descending; list the first five employees hired in 2018.
- Calculate the Finance department's total salary and the minimum employee age.
- Find the maximum salary by location and average salary for designations containing `Analyst`.
- Find departments with fewer than three employees and locations where female employees' average age is below 30.
- Use INNER, LEFT, and RIGHT JOINs to list employee and department details, count employees in all departments, and list employees at all locations—including locations without employees.

## Files

- `MySQL Assignment 2 – Querying Data.sql` — database setup, sample data, and assignment queries.