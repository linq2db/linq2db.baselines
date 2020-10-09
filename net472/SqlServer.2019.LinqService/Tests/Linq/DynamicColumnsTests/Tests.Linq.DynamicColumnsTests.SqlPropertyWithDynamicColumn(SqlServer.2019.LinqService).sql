BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[x].[PersonID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = N'John'

