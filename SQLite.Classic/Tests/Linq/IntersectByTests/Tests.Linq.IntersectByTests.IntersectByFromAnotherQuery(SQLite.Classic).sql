-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [x].[TestId] ORDER BY [x].[TestId]) as [RowNumber],
			[x].[TestId],
			[x].[Id]
		FROM
			[TestTable] [x]
		WHERE
			[x].[TestId] IN (
				SELECT DISTINCT
					[x_1].[TestId]
				FROM
					[TestTable] [x_1]
				WHERE
					[x_1].[Id] <= 2
			)
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[TestId]

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

