BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	CStr([p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

