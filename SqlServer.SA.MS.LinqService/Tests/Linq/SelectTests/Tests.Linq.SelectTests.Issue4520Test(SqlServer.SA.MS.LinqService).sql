BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF(([i].[BoolValue] = 0 OR [i].[BoolValue] IS NULL) AND ([i].[IntValue] = (
		SELECT TOP (1)
			[p].[IntValue]
		FROM
			[LinqDataTypes] [p]
		WHERE
			[p].[ID] = 2
	) OR [i].[IntValue] IS NULL AND (
		SELECT TOP (1)
			[p].[IntValue]
		FROM
			[LinqDataTypes] [p]
		WHERE
			[p].[ID] = 2
	) IS NULL), 1, 0)
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

