-- Access.Ace.OleDb AccessOleDb

SELECT
	CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-01-01 00:00:00')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('d', CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-01-01 00:00:00')) > 0

