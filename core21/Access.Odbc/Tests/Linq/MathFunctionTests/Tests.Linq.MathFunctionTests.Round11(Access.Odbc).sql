BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Round([p].[MoneyValue], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	(Round([p].[MoneyValue], 1) <> 0 OR Round([p].[MoneyValue], 1) IS NULL)

