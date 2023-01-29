/* 
Today's Topic : Partition By
*/

SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM SQLTutorial..EmployeeDemographics DEM
JOIN SQLTutorial..EmployeeSalary SAL 
	ON DEM.EmployeeID = SAL.EmployeeID

---- partition function groups the entity by the column type it belongs to and for 
---- each entity, shows how many other entities are also in that column type

SELECT Gender, COUNT(Gender) AS 'Gender Count'
FROM SQLTutorial..EmployeeDemographics DEM
JOIN SQLTutorial..EmployeeSalary SAL 
	ON DEM.EmployeeID = SAL.EmployeeID
GROUP BY Gender

---- you see how partition function comes in handy when composing 
---- data of gender count and other characteristics of the entities

