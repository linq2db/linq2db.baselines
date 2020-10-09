BeforeExecute
-- SqlServer.2005

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:00:00', 120) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	DatePart(day, [p].[c1]) > 0

