-- Access.Ace.OleDb AccessOleDb
SELECT
	IIF([p].[MoneyValue] * 100000 - Int([p].[MoneyValue] * 100000) = 0.5 AND Int([p].[MoneyValue] * 100000) MOD 2 = 0, -Int(-([p].[MoneyValue] * 100000)), Round([p].[MoneyValue] * 100000, 0)) / 100000 + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	Round([p].[MoneyValue], 5) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

