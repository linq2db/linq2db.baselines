BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	CStr([p].[ID])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[ID])) > 0

