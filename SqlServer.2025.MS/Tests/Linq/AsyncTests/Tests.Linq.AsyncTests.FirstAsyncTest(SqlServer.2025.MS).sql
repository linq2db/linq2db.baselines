-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

