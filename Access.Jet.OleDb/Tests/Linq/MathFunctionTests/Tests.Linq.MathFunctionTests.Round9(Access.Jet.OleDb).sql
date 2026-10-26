-- Access.Jet.OleDb AccessOleDb
SELECT
	[t].[c1]
FROM
	(
		SELECT
			Sgn([p].[MoneyValue]) * (Int(Abs([p].[MoneyValue]) * (10 ^ 1) + 0.5) / (10 ^ 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

