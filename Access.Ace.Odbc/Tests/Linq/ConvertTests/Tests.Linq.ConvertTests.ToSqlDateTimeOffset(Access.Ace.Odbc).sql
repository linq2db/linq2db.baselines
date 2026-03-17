-- Access.Ace.Odbc AccessODBC

SELECT
	CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01 00:20:00'
FROM
	[LinqDataTypes] [t]

