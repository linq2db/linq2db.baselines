BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[g_1].[FirstName],
	COUNT(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]
ORDER BY
	[g_1].[FirstName]

