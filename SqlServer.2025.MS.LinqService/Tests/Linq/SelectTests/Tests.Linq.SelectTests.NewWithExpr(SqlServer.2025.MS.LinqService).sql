BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p].[PersonID],
	RTRIM(([p].[FirstName] + N'1'), N'')
FROM
	[Person] [p]

