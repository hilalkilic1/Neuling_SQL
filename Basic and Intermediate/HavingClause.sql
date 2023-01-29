/*
Today's Topic: Having Clause
*/

--SELECT JobTitle, COUNT(JobTitle) as 'Number of People'
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE COUNT(JobTitle) > 1
--GROUP BY JobTitle 

--you cannot use this aggregate function in the where statement,
--you should use having statement for that 

--SELECT JobTitle, COUNT(JobTitle) as 'Number of People'
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--HAVING COUNT(JobTitle) > 1
--GROUP BY JobTitle 

--in which case we are still facing an error, because the aggregate function
--"COUNT" is linked very directly to the "GROUP BY" function, so we cannot use
--"COUNT" again before terminating the code including the "GROUP BY" statement.

--SELECT JobTitle, COUNT(JobTitle) as 'Number of People'
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle 
--HAVING COUNT(JobTitle) > 4

--SELECT JobTitle, AVG(Salary) as 'Average'
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--ORDER BY AVG(Salary)
--HAVING AVG(Salary) > 45000

-- see when you code like this you will get an error because "HAVING"
-- determines how the function "GROUP BY" will be executed, it should
--be its successor

--SELECT JobTitle, AVG(Salary) as 'Average'
--FROM SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)




