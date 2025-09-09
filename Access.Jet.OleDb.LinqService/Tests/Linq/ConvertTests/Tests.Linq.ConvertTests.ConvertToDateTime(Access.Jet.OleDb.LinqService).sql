BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-01-01 00:00:00')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('d', CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-01-01 00:00:00')) > 0

