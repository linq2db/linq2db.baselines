BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[FirstName] + N':' + [e].[LastName]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1

