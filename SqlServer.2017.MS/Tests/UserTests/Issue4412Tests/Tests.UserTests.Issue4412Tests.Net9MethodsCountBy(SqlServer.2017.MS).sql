-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[TestId],
	COUNT(*)
FROM
	[TestTable] [g_1]
GROUP BY
	[g_1].[TestId]
ORDER BY
	[g_1].[TestId]

