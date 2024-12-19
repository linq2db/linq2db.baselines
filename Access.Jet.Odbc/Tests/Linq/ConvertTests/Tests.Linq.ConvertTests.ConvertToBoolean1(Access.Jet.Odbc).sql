BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] <> 0, True, False) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] = True

