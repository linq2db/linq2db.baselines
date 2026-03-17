-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int(Log([p].[MoneyValue])) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

