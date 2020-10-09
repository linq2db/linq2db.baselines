BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			DateAdd(month, (1320 + [p].[ID]) - 1, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

