-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([t].[c1] * 2 = ROUND([t].[c1] * 2, 5) AND [t].[c1] <> ROUND([t].[c1], 5), ROUND([t].[c1] / 2, 5) * 2, ROUND([t].[c1], 5))
FROM
	(
		SELECT
			IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 1), ROUND([p].[MoneyValue] / 2, 1) * 2, ROUND([p].[MoneyValue], 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

