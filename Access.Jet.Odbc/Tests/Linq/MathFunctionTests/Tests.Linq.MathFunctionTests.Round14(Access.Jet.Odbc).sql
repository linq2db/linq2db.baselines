-- Access.Jet.Odbc AccessODBC
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 5) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 5), ROUND([p].[MoneyValue] / 2, 5) * 2, ROUND([p].[MoneyValue], 5)) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

-- Access.Jet.Odbc AccessODBC
SELECT
	IIF([p].[ID] > 2, IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 5) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 5), ROUND([p].[MoneyValue] / 2, 5) * 2, ROUND([p].[MoneyValue], 5)), [p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

