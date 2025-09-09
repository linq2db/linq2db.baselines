BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			-Int(-[p].[MoneyValue]) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

