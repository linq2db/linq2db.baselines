BeforeExecute
-- SqlServer.2005

SELECT TOP (50) PERCENT WITH TIES 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
ORDER BY
	[_].[FirstName]

