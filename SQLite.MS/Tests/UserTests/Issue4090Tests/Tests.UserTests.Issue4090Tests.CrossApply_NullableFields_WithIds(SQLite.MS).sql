BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t3].[NAME3],
	[t2].[Id2],
	[t2].[cond],
	[t2].[Name1],
	[t2].[Name2]
FROM
	[TABLE3] [t3]
		LEFT JOIN (
			SELECT
				[t1].[Id1] as [cond],
				[t1].[Name1],
				[x_1].[NAME2] as [Name2],
				[x_1].[ID2] as [Id2],
				ROW_NUMBER() OVER (PARTITION BY [x_1].[ID2] ORDER BY [x_1].[ID2]) as [rn]
			FROM
				[TABLE2] [x_1]
					LEFT JOIN (
						SELECT
							[x].[NAME1] as [Name1],
							[x].[ID1] as [Id1],
							ROW_NUMBER() OVER (PARTITION BY [x].[ID1] ORDER BY [x].[ID1]) as [rn]
						FROM
							[TABLE1] [x]
					) [t1] ON [t1].[Id1] = [x_1].[PARENTID2] AND [t1].[rn] <= 1
		) [t2] ON [t2].[Id2] = [t3].[PARENTID3] AND [t2].[rn] <= 1
ORDER BY
	[t3].[ID3]

