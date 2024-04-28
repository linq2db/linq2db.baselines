BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Int(Log([t].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

