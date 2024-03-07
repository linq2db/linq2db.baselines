BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Round([t_1].[c1], 5)
FROM
	(
		SELECT
			Round([t].[MoneyValue], 1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

