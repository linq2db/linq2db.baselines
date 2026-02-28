-- SqlServer.2025

SELECT
	[x_1].[Id],
	[x_1].[TestId]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [x].[TestId] ORDER BY [x].[TestId]) as [RowNumber],
			[x].[Id],
			[x].[TestId]
		FROM
			[TestTable] [x]
		WHERE
			[x].[TestId] NOT IN (20)
	) [x_1]
WHERE
	[x_1].[RowNumber] = 1

