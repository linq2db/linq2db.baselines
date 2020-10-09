BeforeExecute
-- Access AccessOleDb

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			CDate('2010-' + CStr([p].[ID]) + '-1 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('yyyy', [t].[c1]) = 2010

