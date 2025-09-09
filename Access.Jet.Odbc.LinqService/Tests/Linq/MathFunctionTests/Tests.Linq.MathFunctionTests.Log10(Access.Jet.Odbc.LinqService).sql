BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int(Log([p].[MoneyValue]) / 2.3025850929940459) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

