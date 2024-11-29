BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[FirstName] + N':' + [e].[LastName]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1

