BeforeExecute
-- SqlServer.2016 SqlServer.2012

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

