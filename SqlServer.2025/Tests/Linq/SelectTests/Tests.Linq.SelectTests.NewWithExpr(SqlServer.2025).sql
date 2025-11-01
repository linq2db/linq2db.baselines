-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[PersonID],
	RTRIM(([p].[FirstName] + N'1'), N'')
FROM
	[Person] [p]

