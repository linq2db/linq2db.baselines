-- SqlServer.2019
SELECT
	[t2].[c2],
	[t2].[c1],
	[t2].[Id3]
FROM
	[DictionaryRoot] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[c1],
				[t1].[Id3],
				N't2' as [c2]
			FROM
				[DictionaryMiddle] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[ID3] as [Id3],
							N't3' as [c1]
						FROM
							[DictionaryLeaf] [x]
						WHERE
							[x].[PARENTID3] = [x_1].[ID2]
					) [t1]
			WHERE
				[x_1].[PARENTID2] = [t1_1].[ID1]
		) [t2]

