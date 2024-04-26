BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DatePart('yyyy', [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('m', CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-10-01 20:35:44')) = 10

