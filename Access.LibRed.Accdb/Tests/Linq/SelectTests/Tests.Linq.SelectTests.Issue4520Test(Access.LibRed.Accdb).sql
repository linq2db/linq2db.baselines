-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN NOT CASE
			WHEN [i].[BoolValue] IS NOT NULL THEN [i].[BoolValue]
			ELSE False
		END AND ([i].[IntValue] = (
			SELECT TOP 1
				[p].[IntValue]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = 2
		) OR [i].[IntValue] IS NULL AND (
			SELECT TOP 1
				[p].[IntValue]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = 2
		) IS NULL)
			THEN True
		ELSE False
	END
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

