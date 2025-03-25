BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	CStr([p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CStr([p].[MoneyValue])) > 0

