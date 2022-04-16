BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('d', CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01 00:00:00')) > 0

