BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t3].[NAME3],
	[t2].[cond_1],
	[t2].[cond],
	[t2].[Name1],
	[t2].[Name2]
FROM
	[TABLE3] [t3]
		LEFT JOIN (
			SELECT
				[t1].[cond],
				[t1].[Name1],
				[x_1].[NAME2] as [Name2],
				1 as [cond_1],
				ROW_NUMBER() OVER (PARTITION BY [x_1].[ID2] ORDER BY [x_1].[ID2]) as [rn],
				[x_1].[ID2]
			FROM
				[TABLE2] [x_1]
					LEFT JOIN (
						SELECT
							[x].[NAME1] as [Name1],
							1 as [cond],
							ROW_NUMBER() OVER (PARTITION BY [x].[ID1] ORDER BY [x].[ID1]) as [rn],
							[x].[ID1]
						FROM
							[TABLE1] [x]
					) [t1] ON [t1].[ID1] = [x_1].[PARENTID2] AND [t1].[rn] <= 1
		) [t2] ON [t2].[ID2] = [t3].[PARENTID3] AND [t2].[rn] <= 1
ORDER BY
	[t3].[ID3]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID3],
	[t1].[PARENTID3],
	[t1].[NAME3]
FROM
	[TABLE3] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID2],
	[t1].[PARENTID2],
	[t1].[NAME2]
FROM
	[TABLE2] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID1],
	[t1].[NAME1]
FROM
	[TABLE1] [t1]

