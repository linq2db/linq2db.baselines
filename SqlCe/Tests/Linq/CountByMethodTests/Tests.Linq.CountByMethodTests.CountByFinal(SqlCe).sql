-- SqlCe

SELECT
	[g_1].[TestId] as [Key_1],
	COUNT(*) as [Count_1]
FROM
	[TestTable] [g_1]
GROUP BY
	[g_1].[TestId]
ORDER BY
	[g_1].[TestId]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

