BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Sgn([p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

