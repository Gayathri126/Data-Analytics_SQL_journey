CREATE DATABASE DA_01;
USE DA_01;

CREATE TABLE EMPLOYEES(
EMP_ID CHAR(5),
EMP_NAME VARCHAR(100),
EMP_EMAIL VARCHAR(100),
EMP_SALARY DECIMAL(10,2)
);

DESC EMPLOYEES;

-- Add a column emp_phone of type VARCHAR(15) to the employees table.

ALTER TABLE EMPLOYEES ADD EMP_PHONE VARCHAR(15);

-- Add a column date_of_joining of type DATE to the employees table. 
ALTER TABLE EMPLOYEES  ADD DATE_OF_JOINING DATE;
-- Add a column department of type VARCHAR(50) to the employees table.
ALTER TABLE EMPLOYEES ADD DEPARTMENT VARCHAR(50);

-- Drop the column emp_email from the employees table.
ALTER TABLE EMPLOYEES DROP COLUMN EMP_EMAIL;
-- Drop the column department from the employees table. 
ALTER TABLE EMPLOYEES DROP COLUMN DEPARTMENT;
-- Drop the column date_of_joining from the employees table.
ALTER TABLE  EMPLOYEES DROP DATE_OF_JOINING;
-- Modify the emp_salary column to increase its precision to DECIMAL(12,2).
ALTER TABLE EMPLOYEES MODIFY EMP_SALARY DECIMAL (12,2);
-- Modify the emp_name column to change its type from VARCHAR(100) to VARCHAR(150).
ALTER TABLE EMPLOYEES MODIFY EMP_NAME VARCHAR(150);
-- Modify the emp_phone column to be NOT NULL. 
ALTER TABLE EMPLOYEES MODIFY EMP_PHONE  VARCHAR(15) NOT NULL;
-- Change column emp_name to employee_name and keep it as VARCHAR(150).
ALTER TABLE EMPLOYEES CHANGE  COLUMN EMP_NAME EMPLOYEE_NAME VARCHAR(150);
-- Change column emp_salary to salary and make it FLOAT. 
ALTER TABLE EMPLOYEES CHANGE COLUMN EMP_SALARY SALARY FLOAT;
-- Change column emp_phone to mobile_number and make it VARCHAR(20). 
ALTER TABLE EMPLOYEES CHANGE COLUMN EMP_PHONE MOBILE_NUMBER VARCHAR(20);
-- Rename the employees table to staff. 
ALTER TABLE EMPLOYEES RENAME TO STAFF;
DESC STAFF;
-- Rename the table staff back to employees. 
ALTER TABLE STAFF RENAME TO EMPLOYEES;
DESC EMPLOYEES;
-- Rename table employees to company_employees.
ALTER TABLE EMPLOYEES RENAME TO COMPANY_EMPLOYEES; 
DESC COMPANY_EMPLOYEES; 






