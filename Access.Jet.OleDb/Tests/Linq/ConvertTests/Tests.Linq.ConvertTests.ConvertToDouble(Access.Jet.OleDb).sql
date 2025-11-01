-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[MoneyValue]
FROM
	(
		SELECT
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[MoneyValue] > 0

