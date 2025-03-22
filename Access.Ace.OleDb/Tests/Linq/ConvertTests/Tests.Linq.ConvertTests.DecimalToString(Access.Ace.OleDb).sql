BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	REPLACE(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CStr([p].[MoneyValue])) > 0

