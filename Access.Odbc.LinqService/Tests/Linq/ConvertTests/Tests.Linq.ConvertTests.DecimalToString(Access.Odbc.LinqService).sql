BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

