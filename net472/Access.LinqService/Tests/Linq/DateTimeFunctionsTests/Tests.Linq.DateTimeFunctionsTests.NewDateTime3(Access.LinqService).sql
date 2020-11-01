BeforeExecute
-- Access AccessOleDb

SELECT
	CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-10-1 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('m', CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-10-1 20:35:44')) = 10

