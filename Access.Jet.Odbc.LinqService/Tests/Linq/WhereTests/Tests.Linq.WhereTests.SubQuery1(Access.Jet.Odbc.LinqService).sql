BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[pp].[Value_1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 2), ROUND([p].[MoneyValue] / 2, 2) * 2, ROUND([p].[MoneyValue], 2)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [pp]
WHERE
	[pp].[Value_1] <> 0 AND [pp].[Value_1] <> 7

