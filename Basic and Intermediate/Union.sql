/* 
Today's Topic: Union, Union All
*/

--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Create Table WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT * 
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeSalary
  
--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--Insert into EmployeeSalary Values
--(1001,'Salesman',45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeDemographics
--Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
--	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION
--SELECT * 
--FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

-- full outer join can be thought of as a horizontal
-- combination whereas union is a vertical one

--SELECT EmployeeID, FirstName, Age
--FROM SQLTutorial.dbo.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeSalary
--ORDER BY EmployeeID

--notice how "UNION" doesn't require the 
--same column name to put columns serially,
--so be careful using that code
