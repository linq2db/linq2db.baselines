BeforeExecute
-- SqlCe

SELECT 
	[d].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime, Convert(NVarChar(11), DatePart(year, [t].[DateTimeValue])) + '-02-24 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	DatePart(day, [d].[c1]) > 0

