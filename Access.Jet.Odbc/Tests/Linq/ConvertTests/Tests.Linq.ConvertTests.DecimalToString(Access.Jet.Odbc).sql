BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	CStr([p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CStr([p].[MoneyValue])) > 0

