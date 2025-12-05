-- SqlServer.2022

SELECT
	[t3].[NAME3],
	[t2].[Id2],
	[t2].[cond],
	[t2].[Name1],
	[t2].[Name2]
FROM
	[TABLE3] [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Id1] as [cond],
				[t1].[Name1],
				[x_1].[NAME2] as [Name2],
				[x_1].[ID2] as [Id2]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[NAME1] as [Name1],
							[x].[ID1] as [Id1]
						FROM
							[TABLE1] [x]
						WHERE
							[x].[ID1] = [x_1].[PARENTID2]
					) [t1]
			WHERE
				[x_1].[ID2] = [t3].[PARENTID3]
		) [t2]
ORDER BY
	[t3].[ID3]

-- SqlServer.2022

SELECT
	[t1].[ID3],
	[t1].[PARENTID3],
	[t1].[NAME3]
FROM
	[TABLE3] [t1]

-- SqlServer.2022

SELECT
	[t1].[ID2],
	[t1].[PARENTID2],
	[t1].[NAME2]
FROM
	[TABLE2] [t1]

-- SqlServer.2022

SELECT
	[t1].[ID1],
	[t1].[NAME1]
FROM
	[TABLE1] [t1]

