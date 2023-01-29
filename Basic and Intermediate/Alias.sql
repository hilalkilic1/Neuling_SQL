
/* 
Today's Topic: ALIASING
*/
--imma do a quick data correction before proceding

--INSERT INTO SQLTutorial.dbo.EmployeeSalary VALUES

--(1001,'Salesman',45000),
--(1003, 'Salesman', 63000),
--(1008, 'Salesman', 48000)

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeSalary
--ORDER BY EmployeeID ASC

--DELETE FROM SQLTutorial.dbo.EmployeeSalary
--WHERE EmployeeID = 1008
 
-- INSERT INTO SQLTutorial.DBO.EmployeeSalary VALUES
-- (1008, 'Salesman', 48000)


--correction is done

--Back to ALIASING:

--SELECT FirstName + ' ' + LastName AS FullName
--FROM [SQLTutorial].[dbo].EmployeeDemographics 

----you may or may not use "AS"

--SELECT FirstName + ' ' + LastName FullName
--FROM [SQLTutorial].[dbo].EmployeeDemographics 

--SELECT AVG(Age) AS 'Average Age'
--FROM SQLTutorial.dbo.EmployeeDemographics

----you can give a codename to tables as well to 
--make coding easier

--SELECT * 
--FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo
--ORDER BY EmployeeID

--SELECT * FROM [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
--ORDER BY EmployeeID

--SELECT Demo.EmployeeID, Sal.Salary
--FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo
--JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
--	ON SAL.EmployeeID = Demo.EmployeeID

--SELECT A.EmployeeID, A.FirstName, B.JobTitle 
--FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS A
--LEFT JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS B
--	ON A.EmployeeID = B.EmployeeID
--LEFT JOIN [SQLTutorial].[dbo].[WareHouseEmployeeDemographics] AS C
--	ON A.EmployeeID = C.EmployeeID




