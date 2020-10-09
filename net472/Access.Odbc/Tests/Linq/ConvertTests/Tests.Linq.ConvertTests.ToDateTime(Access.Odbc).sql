BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	DatePart('d', [p].[c1]) > 0

