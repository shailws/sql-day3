
CREATE DATABASE SampleDB;
USE SampleDB;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    joining_date DATE NOT NULL
);
INSERT INTO Employee (emp_id, first_name, last_name, department, email, salary, joining_date) VALUES
(1, 'John', 'Doe', 'HR', 'john.doe@example.com', 55000.00, '2022-05-01'),
(2, 'Jane', 'Smith', 'Finance', 'jane.smith@example.com', 60000.00, '2021-08-15'),
(3, 'Robert', 'Brown', 'IT', 'robert.brown@example.com', 75000.00, '2020-12-10'),
(4, 'Emily', 'Johnson', 'Marketing', 'emily.johnson@example.com', 50000.00, '2022-03-22'),
(5, 'Michael', 'Williams', 'IT', 'michael.williams@example.com', 72000.00, '2019-07-11'),
(6, 'Sarah', 'Taylor', 'HR', 'sarah.taylor@example.com', 52000.00, '2023-01-05'),
(7, 'David', 'Anderson', 'Finance', 'david.anderson@example.com', 58000.00, '2021-06-20'),
(8, 'Laura', 'Martin', 'Sales', 'laura.martin@example.com', 46000.00, '2022-11-09'),
(9, 'Daniel', 'Thomas', 'IT', 'daniel.thomas@example.com', 70000.00, '2020-04-18'),
(10, 'Sophia', 'Moore', 'Marketing', 'sophia.moore@example.com', 51000.00, '2022-07-30');

select * from Employee;

select * from  Employee where emp_id between 1 and 4;
update Employee set first_name="abhi" where emp_id between 1 and 2;

select * from  Employee where emp_id=1 or emp_id=3;
select * from  Employee where department = 'HR' or department = 'Finance';

select * from Employee where not department = 'IT';
select * from Employee where not salary < 50000;

select * from Employee where salary between 50000 and 70000;
select * from Employee where emp_id between 1 and 2;

select * from employee where emp_id in(1,5);
select * from employee where salary in(50000,70000,46000);

select * from employee where email like '%@example.com';
select * from employee where first_name like 'M%';

select * from employee where first_name like '_bhi';
select * from employee where last_name like '____e';
