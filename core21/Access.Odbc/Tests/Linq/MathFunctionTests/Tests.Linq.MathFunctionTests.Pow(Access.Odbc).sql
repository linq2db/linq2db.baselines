BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Int([p].[MoneyValue] ^ 3)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int([p].[MoneyValue] ^ 3) <> 0 OR Int([p].[MoneyValue] ^ 3) IS NULL)

