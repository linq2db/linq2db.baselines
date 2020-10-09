BeforeExecute
-- SqlCe

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime, '2010-' + Convert(NVarChar(11), [p].[ID]) + '-1 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

