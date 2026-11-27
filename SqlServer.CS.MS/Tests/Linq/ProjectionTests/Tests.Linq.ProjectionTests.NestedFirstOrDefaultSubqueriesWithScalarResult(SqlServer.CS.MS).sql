-- SqlServer.CS.MS SqlServer.2025
SELECT
	(
		SELECT TOP (1)
			(
				SELECT TOP (1)
					[x_1].[ID3]
				FROM
					[DictionaryLeaf] [x_1]
				WHERE
					[x_1].[PARENTID3] = [x].[ID2]
			)
		FROM
			[DictionaryMiddle] [x]
		WHERE
			[x].[PARENTID2] = [t1].[ID1]
	)
FROM
	[DictionaryRoot] [t1]

