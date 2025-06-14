BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			IIF(-[p].[MoneyValue] >= 0, Int(-[p].[MoneyValue]), -Int(1 * [p].[MoneyValue])) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

