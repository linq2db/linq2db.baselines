BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	CStr([p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

