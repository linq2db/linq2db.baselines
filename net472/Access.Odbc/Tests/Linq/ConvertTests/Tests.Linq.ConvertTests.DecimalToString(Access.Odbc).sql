BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	CStr([t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Len(CStr([t].[MoneyValue])) > 0

