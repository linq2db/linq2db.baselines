BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[FirstName] + N':' + [e].[LastName]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1

