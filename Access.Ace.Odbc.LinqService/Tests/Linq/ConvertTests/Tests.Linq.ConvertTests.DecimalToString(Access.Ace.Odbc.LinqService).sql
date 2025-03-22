BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	REPLACE(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CStr([p].[MoneyValue])) > 0

