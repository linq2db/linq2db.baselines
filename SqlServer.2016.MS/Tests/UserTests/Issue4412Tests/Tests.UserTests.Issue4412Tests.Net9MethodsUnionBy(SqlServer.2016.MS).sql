-- SqlServer.2016.MS SqlServer.2016

SELECT
	[x_3].[Id],
	[x_3].[TestId]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [x_2].[TestId] ORDER BY [x_2].[SourceIndex], [x_2].[TestId]) as [RowNumber],
			[x_2].[Id],
			[x_2].[TestId]
		FROM
			(
				SELECT
					[x].[Id],
					[x].[TestId],
					CAST(0 AS Int) as [SourceIndex]
				FROM
					[TestTable] [x]
				UNION ALL
				SELECT
					[x_1].[Id],
					[x_1].[TestId],
					CAST(1 AS Int) as [SourceIndex]
				FROM
					[TestTable] [x_1]
			) [x_2]
	) [x_3]
WHERE
	[x_3].[RowNumber] = 1

