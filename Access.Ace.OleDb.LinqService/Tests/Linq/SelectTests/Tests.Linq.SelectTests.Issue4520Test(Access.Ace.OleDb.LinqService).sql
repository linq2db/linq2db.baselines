BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF(NOT IIF([i].[BoolValue] IS NOT NULL, [i].[BoolValue], False) AND IIF([i].[IntValue] <> (
		SELECT TOP 1
			[p].[IntValue]
		FROM
			[LinqDataTypes] [p]
		WHERE
			[p].[ID] = 2
	), False, True), True, False)
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

