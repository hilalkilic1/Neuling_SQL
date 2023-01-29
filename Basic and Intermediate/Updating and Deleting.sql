/*
Today's Topic: Updating/Deleting Data
*/

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeDemographics

--UPDATE SQLTutorial.dbo.EmployeeDemographics
--SET EmployeeID = 1012
--WHERE FirstName = 'Holly'

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--UPDATE SQLTutorial.dbo.EmployeeDemographics
--SET Age = 31, Gender = 'Female'
--WHERE FirstName = 'Holly' AND LastName = 'Flax'

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE EmployeeID = 1005 

--you should be careful executing a "DELETE" statement
--because it is irreversible

--Select * 
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE EmployeeID = 1004

--first, see the table you want to delete, then you can delete it safely

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE EmployeeID = 1004

--SELECT * 
--FROM SQLTutorial.dbo.EmployeeDemographics
--ORDER BY EmployeeID ASC

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE FirstName = 'Jim2'

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE FirstName = 'Jim3'

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE FirstName = 'Jim9'

--DELETE FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE EmployeeID = 1001

--INSERT INTO SQLTutorial.dbo.EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male')