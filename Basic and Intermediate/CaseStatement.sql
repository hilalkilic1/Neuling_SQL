/*
Today's Topic: Case Statement
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is not Null 
--ORDER BY Age

-- see how after the column name "Age" we 
-- put a comma because the case statement is 
-- actually another column derived from the previous columns

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age = 38 THEN 'Stanley'
--	ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is not Null 
--ORDER BY Age

-- when we change the code by the case statement we see no 
-- changes in the table because that condition was already met 
-- by the previous line where it says anyone aged more than 30 is old,
-- to fix the problem, just put 38 year-old conditon aside by coding it 
-- above the 30 year-old condition

--SELECT FirstName, LastName, JobTitle, Salary,
--CASE 
--	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
--	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
--	WHEN JobTitle = 'HR'  THEN Salary + (Salary * .01)
--	ELSE Salary + (Salary * .03)
--END AS SalaryAfterRaise
--FROM  SQLTutorial.dbo.EmployeeDemographics
--JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID