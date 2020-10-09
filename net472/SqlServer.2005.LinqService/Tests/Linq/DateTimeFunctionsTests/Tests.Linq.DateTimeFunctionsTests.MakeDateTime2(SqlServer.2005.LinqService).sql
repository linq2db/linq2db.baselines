BeforeExecute
-- SqlServer.2005

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Convert(DateTime, N'2010-' + Convert(VarChar(11), [p].[ID]) + N'-1 20:35:44', 120) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

