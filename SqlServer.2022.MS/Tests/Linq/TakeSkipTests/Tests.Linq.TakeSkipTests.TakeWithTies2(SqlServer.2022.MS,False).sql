BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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

