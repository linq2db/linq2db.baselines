-- SqlServer.2025.MS SqlServer.2025

SELECT
	[p].[PersonID],
	RTRIM(([p].[FirstName] + N'1'), N'')
FROM
	[Person] [p]

