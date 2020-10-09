BeforeExecute
-- Access AccessOleDb

SELECT 
	[d].[c1]
FROM
	( 
		SELECT 
			CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-02-24 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	DatePart('d', [d].[c1]) > 0

