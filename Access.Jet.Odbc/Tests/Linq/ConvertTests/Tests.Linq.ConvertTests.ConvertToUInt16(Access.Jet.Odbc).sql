-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Round([t].[MoneyValue], 0) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

