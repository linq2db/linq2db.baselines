BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p2].[PersonID],
	RTRIM(([p2].[FirstName] + N''), N'')
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

