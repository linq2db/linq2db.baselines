-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	IIF(LEN([p].[FirstName] + N'.') = 1, 1, 0)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

