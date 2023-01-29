/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg,
*/

--SELECT *
---- * means everything
--FROM EmployeeDemographics

--SELECT FirstName, LastName
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--SELECT MAX(Salary)
--FROM EmployeeSalary

--SELECT MIN(Salary)
--FROM EmployeeSalary

--SELECT AVG(Salary)
--FROM EmployeeSalary

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary
----This is for when you are not in the said database.

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim2'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age >= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age = 30  OR Gender = 'Male'