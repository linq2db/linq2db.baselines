-- SqlCe

SELECT
	[g_1].[FirstName],
	[g_1].[LastName],
	COUNT(*) as [COUNT_1]
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName],
	[g_1].[LastName]
ORDER BY
	[g_1].[FirstName]

