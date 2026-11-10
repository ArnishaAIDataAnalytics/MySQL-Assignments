# MySQL Assignment 1 – DDL Commands & Constraints

This assignment practices MySQL Data Definition Language (DDL) by creating and changing an employee database, then rebuilding it with integrity constraints.

## Files

- [`MySQL Assignment 1 - DDL Commands & Constraints.sql`](MySQL%20Assignment%201%20-%20DDL%20Commands%20%26%20Constraints.sql) — SQL statements for the DDL and constraints questions.

## Assignment Questions

### DDL Commands

1. **Create a database and tables:** Create the `employee` database and the `Departments`, `Location`, and `Employees` tables.
2. **Alter a table:** Add `email` to `Employees`, widen the `designation` column, drop `age`, and rename `hire_date` to `date_of_joining`.
3. **Rename tables:** Rename `Departments` to `Departments_Info` and `Location` to `Locations`.
4. **Truncate a table:** Remove all records from `Employees` while retaining its table structure.
5. **Drop objects:** Drop the `Employees` table and then the `employee` database.

### Constraints

1. **Recreate the database:** Drop `employee` if it exists, then recreate it for the constrained schema.
2. **Create `Departments`:** Make `department_id` a primary key; require `department_name` and prevent duplicate names.
3. **Create `Location`:** Generate sequential location IDs automatically; require each location and prevent duplicate names.
4. **Create `Employees` with constraints:** Use a distinct employee ID, require the employee name, limit gender to `M` or `F`, require age to be at least 18, default `hire_date` to the current date, and reference valid department and location IDs.

## Schema at a Glance

- `Departments`: `department_id`, `department_name`
- `Location`: `location_id`, `location`
- `Employees`: `employee_id`, `employee_name`, `gender`, `age`, `hire_date`, `designation`, `department_id`, `location_id`, `salary` (and `email` in the alteration exercise)

## Running the SQL

Use a local MySQL practice instance. Review the script and run it in order, paying attention to its section boundaries. The early DDL exercises intentionally rename and drop tables and ultimately drop the `employee` database; the constraints section then recreates the database and tables. Do not run this script against a database containing data you need to keep.

The constraints exercise uses MySQL features such as `ENUM`, `AUTO_INCREMENT`, `CHECK`, and a current-date default. Use a MySQL version that supports the constraints as enforced in this assignment (MySQL 8.0.16 or later is recommended for enforced `CHECK` constraints).

## Learning Outcomes

After completing the assignment, you should be able to create and modify schemas with DDL, understand how table changes affect objects, and use constraints and relationships to protect data integrity.