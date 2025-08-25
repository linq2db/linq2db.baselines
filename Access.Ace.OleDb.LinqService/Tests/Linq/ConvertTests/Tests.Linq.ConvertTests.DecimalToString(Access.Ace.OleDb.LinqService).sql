BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	Replace(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

