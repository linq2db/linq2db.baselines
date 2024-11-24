BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			-Int(-[p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

