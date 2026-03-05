-- SqlServer.2022

SELECT
	[t].[TestId],
	[t1].[count_1]
FROM
	[TestTable] [t]
		INNER JOIN (
			SELECT
				[g_1].[TestId] as [Key_1],
				COUNT(*) as [count_1]
			FROM
				[TestTable] [g_1]
			GROUP BY
				[g_1].[TestId]
		) [t1] ON [t1].[Key_1] = [t].[TestId]

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

