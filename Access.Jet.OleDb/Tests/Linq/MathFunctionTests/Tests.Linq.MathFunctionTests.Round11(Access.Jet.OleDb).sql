BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	IIF([t].[MoneyValue] * 2 = ROUND([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> ROUND([t].[MoneyValue], 1), ROUND([t].[MoneyValue] / 2, 1) * 2, ROUND([t].[MoneyValue], 1)) <> 0

