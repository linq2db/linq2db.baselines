BeforeExecute
-- SqlServer.2022

SELECT
	IIF(([i].[BoolValue] = 0 OR [i].[BoolValue] IS NULL) AND IIF([i].[IntValue] <> (
		SELECT TOP (1)
			[p].[IntValue]
		FROM
			[LinqDataTypes] [p]
		WHERE
			[p].[ID] = 2
	), 0, 1) = 1, 1, 0)
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

