BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Round([p].[MoneyValue], 0)
FROM
	[LinqDataTypes] [p]
WHERE
	(Round([p].[MoneyValue], 0) <> 0 OR Round([p].[MoneyValue], 0) IS NULL)

