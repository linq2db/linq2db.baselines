BeforeExecute
-- SqlServer.2017

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime2, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

