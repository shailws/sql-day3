CREATE DATABASE New3;
USE New3;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    BirthDate DATE,
    HireDate DATE,
    JobTitle VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO  Employees(FirstName, LastName, Gender, BirthDate, HireDate, JobTitle, Department, Salary, Email, PhoneNumber, Address, City, Country)VALUES
('shailesh', 'utkar', 'male',  '1990-05-14', '2020-03-01', 'devloper', 'fullstack', 30000.00, 'shailesh@gmail.com', 7709822300 , 'bendarwadi', 'risod', 'india'),
('abhi', 'utkar', 'male', '1985-08-22', '2020-03-02', 'devloper', 'fullstack', 35000.00, 'abhishek@gmail.com', 8857011632, 'bendarwadi', 'risod', 'india'),
('rahul', 'deshmukh', 'male', '1992-11-30', '2020-03-03', 'designer', 'frontend', 35000.00, 'rahul@gmail.com', 2209822300 , 'bendarwadi', 'risod', 'india'),
('naval', 'ambekar', 'male', '1995-03-25', '2020-03-04', 'designer', 'autocad', 38000.00, 'naval@gmail.com', 1109822300 , 'kasar galli', 'risod', 'india'),
('akash', 'ambekar', 'male', '1988-07-19', '2020-03-05', 'devloper', 'fullstack', 39000.00, 'akash@gmail.com', 3309822300 , 'kasar galli', 'risod', 'india'),
('pavan', 'ghayal', 'male', '1993-02-15', '2020-03-06', 'manager', 'back', 40000.00, 'pavan@gmail.com', 9909822300 , 'talegon', 'pune', 'india'),
('vivek', 'shinde', 'male', '1991-09-10', '2020-03-07', 'manager', 'bank', 50000.00, 'vivek@gmail.com', 1209822300 , 'talegon', 'pune', 'india'),
('sachin', 'kadam', 'male', '1996-12-20', '2020-03-08', 'engineer', 'civil', 50000.00, 'sachin@gmail.com', 9905822300 , 'panchavati', 'nashik', 'india'),
('harshad', 'agrawal', 'male', '1987-04-11', '2020-03-09', 'lowyer', 'law', 40000.00, 'harshad@gmail.com', 7709522300 , 'karve nagar', 'pune', 'india'),
('akash', 'patil', 'male', '1994-10-05', '2020-03-11', 'designer', 'otocad', 60000.00, 'akash@gmail.com', 1798825300 , 'pachavati', 'nashik', 'india');

SELECT * FROM Employees;

SELECT * FROM Employees WHERE EmployeeID BETWEEN 1 AND 10;
UPDATE Employees SET BirthDate='2002-08-22' WHERE EmployeeID='1'AND HireDate='2020-03-01';

SELECT * FROM Employees WHERE EmployeeID='1' OR HireDate='2020-03-02';
SELECT * FROM Employees WHERE EmployeeID = 1 OR EmployeeID = 10;

SELECT * FROM Employees WHERE NOT EmployeeID = 10;
SELECT * FROM Employees WHERE NOT FirstName='shailesh';

SELECT * FROM Employees WHERE EmployeeID  BETWEEN 1 AND '8';
SELECT * FROM Employees WHERE  BirthDate BETWEEN '1985-08-22' AND '1994-10-05';

SELECT * FROM Employees WHERE EmployeeID IN(1, 5);
UPDATE Employees SET  BirthDate='2003-09-18' WHERE EmployeeID='2';

SELECT * FROM Employees WHERE  Email LIKE '%@gmail.com';
SELECT * FROM Employees WHERE JobTitle LIKE '%evloper';

SELECT * FROM Employees WHERE  Email LIKE '________@gmail.com';
SELECT * FROM Employees WHERE JobTitle LIKE '_evloper';

