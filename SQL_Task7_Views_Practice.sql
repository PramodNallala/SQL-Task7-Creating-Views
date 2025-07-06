
-- Create a sample table for demonstration
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert sample data
INSERT INTO Employee (emp_id, name, department, salary) VALUES
(101, 'Ravi', 'HR', 30000),
(102, 'Sita', 'IT', 50000),
(103, 'Ajay', 'Finance', 40000),
(104, 'Kiran', 'IT', 60000);

-- 1. Create a simple view to show IT employees
CREATE VIEW IT_Employees AS
SELECT emp_id, name, salary
FROM Employee
WHERE department = 'IT';

-- 2. Create a view for abstraction (hide salary)
CREATE VIEW Public_Employee_View AS
SELECT emp_id, name, department
FROM Employee;

-- 3. Create a view using complex SELECT with JOINs or functions (if other tables exist)
-- Assuming another table for Departments:
CREATE TABLE Department (
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Department VALUES
('HR', 'Hyderabad'),
('IT', 'Bangalore'),
('Finance', 'Mumbai');

-- View joining Employee and Department tables
CREATE VIEW Employee_Department_Details AS
SELECT e.name, e.department, d.location
FROM Employee e
JOIN Department d ON e.department = d.dept_name;
