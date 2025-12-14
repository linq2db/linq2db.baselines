-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(ABS([p].[MoneyValue] * 10 MOD 10) = 5 AND ([p].[MoneyValue] MOD 2) = 2, [p].[MoneyValue], ROUND([p].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

