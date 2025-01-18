BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[cond],
	[t1].[Id3]
FROM
	[TABLE1] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				N't2' as [cond],
				(
					SELECT TOP (1)
						[x_1].[ID3]
					FROM
						[TABLE3] [x_1]
					WHERE
						[x_1].[PARENTID3] = [x].[ID2]
				) as [Id3]
			FROM
				[TABLE2] [x]
			WHERE
				[x].[PARENTID2] = [t1_1].[ID1]
		) [t1]

