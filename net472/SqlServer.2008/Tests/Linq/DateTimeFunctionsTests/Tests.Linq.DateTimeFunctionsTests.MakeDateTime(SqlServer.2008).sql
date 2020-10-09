BeforeExecute
-- SqlServer.2008

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

