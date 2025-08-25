BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT TOP (2)
	[p].[PersonID],
	[p].[MiddleName],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

