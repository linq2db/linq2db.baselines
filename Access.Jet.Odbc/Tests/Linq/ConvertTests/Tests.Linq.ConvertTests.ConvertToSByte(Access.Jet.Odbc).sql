-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[c1]
FROM
	(
		SELECT
			ROUND([t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

