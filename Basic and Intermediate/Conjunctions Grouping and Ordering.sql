--SELECT *
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age > 35 


--SELECT *
--FROM EmployeeDemographics
--WHERE Age > 32 AND Gender = 'Male'


--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'H%' 
----to get last names starting with the letter h
----CASE INSENSITIVE

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE '%H%'
----to get last names with the letter h anywhere
----CASE INSENSITIVE

--SELECT * 
--FROM EmployeeDemographics
--WHERE FirstName is NOT NULL

--SELECT * 
--FROM EmployeeDemographics
--WHERE FirstName IN ('Jim', 'Jim2')
----Instead of using "AND"s for the same type of variable, use a list with the code "IN"

--SELECT Gender, Age, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender, Age

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC




