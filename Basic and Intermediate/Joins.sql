/*
Inner joins, FULL/LEFT/RIGHT/OUTER Inner Joins
*/

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--joining two tables together, we need entities that are common 
--in these two tables by at least a single variable

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--FULL Outer Join SQLTutorial.dbo.EmployeeSalary
--     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--"FULL OUTER JOIN" will combine to tables with no common entities

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--Right Outer Join SQLTutorial.dbo.EmployeeSalary
--    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--"RIGHT OUTER JOIN" will combine the relevant entities of the 
--first chosen table and all the entities of the second chosen table

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--here you do not have to specify the table for columns that are 
--contained in the table specified in the "from" section, but you 
--should code "tablename.columnname" for tables that are not contained 
--in that table

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Jim'
--ORDER BY Salary DESC

--SELECT JobTitle, AVG(Salary)
--FROM SQLTutorial.dbo.EmployeeDemographics
--Inner Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman1'
--GROUP BY JobTitle





