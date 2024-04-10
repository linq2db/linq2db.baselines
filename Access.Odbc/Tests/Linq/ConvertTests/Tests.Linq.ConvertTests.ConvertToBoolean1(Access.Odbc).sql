BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] <> 0, True, False) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = True

