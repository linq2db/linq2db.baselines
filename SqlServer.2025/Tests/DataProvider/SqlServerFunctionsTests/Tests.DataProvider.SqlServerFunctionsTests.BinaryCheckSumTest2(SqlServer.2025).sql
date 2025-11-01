-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	BINARY_CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

