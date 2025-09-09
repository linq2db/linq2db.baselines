BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

