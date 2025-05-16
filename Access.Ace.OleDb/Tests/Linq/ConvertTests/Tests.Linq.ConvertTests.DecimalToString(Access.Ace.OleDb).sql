BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	Replace(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

