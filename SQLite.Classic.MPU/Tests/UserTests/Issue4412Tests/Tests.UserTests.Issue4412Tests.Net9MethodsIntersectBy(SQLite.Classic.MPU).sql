-- SQLite.Classic.MPU SQLite.Classic SQLite

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
			[x].[TestId] IN (20, 30)
	) [x_1]
WHERE
	[x_1].[RowNumber] = 1

