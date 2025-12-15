-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t2].[cond_1],
	[t2].[cond],
	[t2].[Id3]
FROM
	[TABLE1] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[c1] as [cond],
				[t1].[Id3],
				N't2' as [cond_1]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[ID3] as [Id3],
							N't3' as [c1]
						FROM
							[TABLE3] [x]
						WHERE
							[x].[PARENTID3] = [x_1].[ID2]
					) [t1]
			WHERE
				[x_1].[PARENTID2] = [t1_1].[ID1]
		) [t2]

