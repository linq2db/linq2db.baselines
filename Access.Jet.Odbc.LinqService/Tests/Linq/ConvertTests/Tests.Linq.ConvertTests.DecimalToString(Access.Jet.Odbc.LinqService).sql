BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	CStr([p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

