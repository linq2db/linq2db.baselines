BeforeExecute
-- SqlServer.2012

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:00:00', 120) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	DatePart(day, [p].[c1]) > 0

