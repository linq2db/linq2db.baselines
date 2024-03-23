BeforeExecute
-- SqlServer.2008

SELECT TOP (2)
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

