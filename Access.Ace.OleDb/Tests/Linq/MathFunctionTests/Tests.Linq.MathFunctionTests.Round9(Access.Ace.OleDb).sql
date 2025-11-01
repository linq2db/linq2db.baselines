-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0

