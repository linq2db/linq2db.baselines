BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1)
FROM
	[LinqDataTypes] [p]
WHERE
	Iif([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) <> 0

