-- SqlServer.2012

SELECT
	(
		SELECT TOP (1)
			(
				SELECT TOP (1)
					[x_1].[ID3]
				FROM
					[TABLE3] [x_1]
				WHERE
					[x_1].[PARENTID3] = [x].[ID2]
			)
		FROM
			[TABLE2] [x]
		WHERE
			[x].[PARENTID2] = [t1].[ID1]
	)
FROM
	[TABLE1] [t1]

