BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif([p].[MoneyValue] < 5, [p].[MoneyValue], 5)
FROM
	[LinqDataTypes] [p]
WHERE
	(Iif([p].[MoneyValue] < 5, [p].[MoneyValue], 5) <> 0 OR Iif([p].[MoneyValue] < 5, [p].[MoneyValue], 5) IS NULL)

