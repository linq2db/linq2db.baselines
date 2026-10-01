-- Access.Jet.OleDb AccessOleDb
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, ([p].[ID] MOD 2) + 2) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], ([p].[ID] MOD 2) + 2), ROUND([p].[MoneyValue] / 2, ([p].[ID] MOD 2) + 2) * 2, ROUND([p].[MoneyValue], ([p].[ID] MOD 2) + 2))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

