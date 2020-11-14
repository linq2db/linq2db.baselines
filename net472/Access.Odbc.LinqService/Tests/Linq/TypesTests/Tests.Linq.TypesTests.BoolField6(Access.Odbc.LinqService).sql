BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[MoneyValue]
FROM
	(
		SELECT
			Iif([t].[BoolValue] = False, True, False) as [b],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[b] = True

