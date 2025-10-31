BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] >= 0, Int([p].[MoneyValue] + 0.5), Int([p].[MoneyValue] - 0.5)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

