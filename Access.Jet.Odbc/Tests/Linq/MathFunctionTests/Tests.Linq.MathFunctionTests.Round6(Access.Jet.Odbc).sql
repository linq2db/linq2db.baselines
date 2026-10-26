-- Access.Jet.Odbc AccessODBC
SELECT
	[t].[c1]
FROM
	(
		SELECT
			Sgn([p].[MoneyValue]) * Int(Abs([p].[MoneyValue]) + 0.5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

