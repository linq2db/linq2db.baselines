BeforeExecute
-- SqlServer.2008

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			0 as [c1]
		FROM
			[LinqDataTypes] [selectParam]
		GROUP BY
			MONTH([selectParam].[DateTimeValue]),
			YEAR([selectParam].[DateTimeValue])
	) [t1]

BeforeExecute
-- SqlServer.2008

SELECT 
	[t1].[c1], 
	[t1].[c2]
FROM
	( 
		SELECT 
			MONTH([selectParam].[DateTimeValue]) as [c1], 
			YEAR([selectParam].[DateTimeValue]) as [c2]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

