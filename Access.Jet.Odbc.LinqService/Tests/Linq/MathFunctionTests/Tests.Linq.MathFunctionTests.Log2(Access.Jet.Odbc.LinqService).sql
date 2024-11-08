BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int(Log([p].[MoneyValue]) / 0.69314718055994529) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

