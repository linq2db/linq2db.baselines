BeforeExecute
-- SqlServer.2005

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1 20:35:44', 120) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

