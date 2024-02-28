BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Round([p].[MoneyValue], 2)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 2) <> 0 AND Round([p].[MoneyValue], 2) <> 7

