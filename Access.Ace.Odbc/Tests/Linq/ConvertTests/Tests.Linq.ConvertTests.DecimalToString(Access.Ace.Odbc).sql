BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	Replace(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

