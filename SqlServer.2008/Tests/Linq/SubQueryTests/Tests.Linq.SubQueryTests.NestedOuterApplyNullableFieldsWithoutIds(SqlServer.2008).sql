-- SqlServer.2008
SELECT
	[t3].[NAME3],
	[t2].[not_null_1],
	[t2].[not_null],
	[t2].[Name1],
	[t2].[Name2]
FROM
	[NestedApplyLeaf] [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[not_null],
				[t1].[Name1],
				[x_1].[NAME2] as [Name2],
				1 as [not_null_1]
			FROM
				[NestedApplyMiddle] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[NAME1] as [Name1],
							1 as [not_null]
						FROM
							[NestedApplyRoot] [x]
						WHERE
							[x].[ID1] = [x_1].[PARENTID2]
					) [t1]
			WHERE
				[x_1].[ID2] = [t3].[PARENTID3]
		) [t2]
ORDER BY
	[t3].[ID3]

