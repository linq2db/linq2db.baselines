BeforeExecute
-- Access AccessOleDb

SELECT
	CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-02-24 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('d', CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-02-24 00:00:00')) > 0

