BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF(([i].[BoolValue] = False AND [i].[BoolValue] IS NOT NULL OR [i].[BoolValue] IS NULL OR IIF([i].[BoolValue] IS NOT NULL, [i].[BoolValue], False) IS NULL) AND ([i].[IntValue] = (
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
	) IS NULL), True, False)
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

