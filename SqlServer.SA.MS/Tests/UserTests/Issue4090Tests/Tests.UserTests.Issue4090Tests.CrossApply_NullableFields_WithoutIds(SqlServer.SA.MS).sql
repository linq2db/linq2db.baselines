BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t3].[NAME3],
	[t2].[cond_1],
	[t2].[cond],
	[t2].[Name1],
	[t2].[Name2]
FROM
	[TABLE3] [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[cond],
				[t1].[Name1],
				[x_1].[NAME2] as [Name2],
				1 as [cond_1]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[NAME1] as [Name1],
							1 as [cond]
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

