-- Access.Jet.Odbc AccessODBC
SELECT
	[t].[c1]
FROM
	(
		SELECT
			Sgn([p].[MoneyValue]) * ((Int(Abs([p].[MoneyValue]) * (10 ^ 1)) + Int((Abs([p].[MoneyValue]) * (10 ^ 1) - Int(Abs([p].[MoneyValue]) * (10 ^ 1))) * 2)) / (10 ^ 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

