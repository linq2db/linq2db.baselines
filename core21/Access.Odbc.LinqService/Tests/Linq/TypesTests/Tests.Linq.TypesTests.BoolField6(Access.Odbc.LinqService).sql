BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	(Iif([t].[BoolValue] = False, True, False) = True AND Iif([t].[BoolValue] = False, True, False) IS NOT NULL)

