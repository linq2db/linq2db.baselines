-- SqlServer.2008

SELECT
	[t1_1].[NAME1],
	[t2].[not_null],
	[t2].[Name2],
	[t2].[Id3],
	[t2].[Name3]
FROM
	[TABLE1] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Id3],
				[t1].[Name3],
				[x_1].[NAME2] as [Name2],
				1 as [not_null]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[NAME3] as [Name3],
							[x].[ID3] as [Id3]
						FROM
							[TABLE3] [x]
						WHERE
							[x].[PARENTID3] = [x_1].[ID2]
					) [t1]
			WHERE
				[x_1].[PARENTID2] = [t1_1].[ID1]
		) [t2]

