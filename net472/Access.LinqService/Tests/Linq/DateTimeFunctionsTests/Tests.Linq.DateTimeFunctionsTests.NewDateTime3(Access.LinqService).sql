BeforeExecute
-- Access AccessOleDb

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			CDate(CStr(DatePart('yyyy', [p].[DateTimeValue])) + '-10-1 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('m', [t].[c1]) = 10

