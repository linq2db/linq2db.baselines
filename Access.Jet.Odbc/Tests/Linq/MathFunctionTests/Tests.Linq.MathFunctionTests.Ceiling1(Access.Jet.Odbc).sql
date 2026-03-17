-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			-Int([p].[MoneyValue] + 1) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

