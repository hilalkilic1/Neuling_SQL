/*
Today's Topic: CTEs
*/

--WITH CTE_Empoyee AS
--(SELECT FirstName, LastName, Gender, Salary,
--Count(Gender) OVER (PARTITION BY Gender) AS TotalGender,
--AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
--FROM SQLTutorial..EmployeeDemographics DEM
--JOIN SQLTutorial..EmployeeSalary SAL
--	ON DEM.EmployeeID=SAL.EmployeeID
--WHERE Salary > '45000')

--SELECT *
--FROM CTE_Empoyee

---- you should run this code completely each time you run the last 
---- part becasue the CTE_Employee table is not saved anywhere, it 
---- is created every time you run the code

---- and it has to be typed right above the said code

/*
Today's Topic: Temp Tables
*/

--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int,
--)
--Select *
--FROM #temp_Employee

--INSERT INTO #temp_Employee VALUES
--(1001,'HR',45000)

--INSERT INTO #temp_Employee
--SELECT *
--FROM SQLTutorial..EmployeeSalary

--DROP TABLE IF EXISTS #Temp_Employee2
--CREATE TABLE #Temp_Employee2 (
--Jobtitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int)

--INSERT INTO #Temp_Employee2
--SELECT JobTitle, 
--COUNT(Jobtitle), 
--AVG(Age), 
--AVG(Salary)
--FROM SQLTutorial..EmployeeDemographics DEM
--JOIN SQLTutorial..EmployeeSalary SAL
--	ON DEM.EmployeeID=SAL.EmployeeID
--GROUP BY JobTitle

--SELECT *
--FROM #Temp_Employee2

/*
Today's Topic: String Functions - 
TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

----Drop Table EmployeeErrors;

--CREATE TABLE EmployeeErrors 
--(
--EmployeeID varchar(50),
--FirstName varchar(50),
--LastName varchar(50)
--)

--INSERT INTO EmployeeErrors VALUES
--('1001   ', 'Jimbo', 'Halbert'),
--('   1002', 'Pamela', 'Beasely'),
--('1005', 'TOby', 'Flenderson - Fired')

--SELECT *
--FROM EmployeeErrors

------Using LTRIM, RTRIM

--SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

--SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

--SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

-------USING REPLACE

--SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
--FROM EmployeeErrors

-------USING SUBSTRING

--SELECT SUBSTRING(FirstName,1,3) 
--FROM EmployeeErrors

------ ---- the first integer in the argument indicates the starting
---- index and the second integer indicates how many steps we take

--SELECT SUBSTRING(FirstName,3,3) 
--FROM EmployeeErrors

--SELECT err.FirstName, err.LastName, dem.FirstName, dem.LastName
--FROM EmployeeErrors AS err
--JOIN EmployeeDemographics AS dem
--	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

---------USING UPPER AND LOWER

--SELECT FirstName, LOWER(FirstName)
--FROM EmployeeErrors

--SELECT FirstName, UPPER(FirstName)
--FROM EmployeeErrors

--SELECT FirstName, SUBSTRING(FirstName, 1, 1) + LOWER(SUBSTRING(FirstName, 2, 1)) + SUBSTRING(FirstName, 3, 6)
--FROM EmployeeErrors

--SELECT err.FirstName, dem.FirstName, err.LastName, dem.LastName
--FROM EmployeeErrors err
--JOIN EmployeeDemographics dem
--	ON err.EmployeeID = dem.EmployeeID 

/*

Today's Topic: Stored Procedures

*/

--Stored procedures are used to keep queries of many lines as functions
--so we don't have to write the same thing more than once

--CREATE PROCEDURE TEST
--AS 
--SELECT * 
--FROM EmployeeDemographics

--EXEC TEST

--here, we just made a procedure out of a table, so it's actually useless

--CREATE PROCEDURE Temp_Employee
--AS 
--CREATE TABLE #temp_employee 
--(
--JobTitle varchar(100),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int
--)

--here our procedure contains a more complex table which is derived from 
--the join of EmployeeDemographics and EmployeeSalary

--INSERT INTO #temp_employee
--SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
--FROM SQLTutorial..EmployeeDemographics EMP
--JOIN SQLTutorial..EmployeeSalary SAL
--	ON EMP.EmployeeID = SAL.EmployeeID
--GROUP BY JobTitle

--by that statement we have created a procedure that gives us information
--regarding the job, the number of employees who have that job, the average
--age, all columns are specified to that job only.

--SELECT * 
--FROM #temp_employee 

--after making sure that we have constructed the table we need, we go to 
--modify the procedure so it is fully a function with the argument 
--we want it to have

-- since our table is based on the jobtitle entity, we modify the procedure
-- so that it behaves as a function when a jobtitle is given as input.

--EXEC Temp_Employee @JobTitle = 'Accountant'

--there we go.


