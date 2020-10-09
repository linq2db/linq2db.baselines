BeforeExecute
-- SqlServer.2005

SELECT 
	Sum([t1].[MoneyValue]), 
	[t1].[c2], 
	[t1].[c1]
FROM
	( 
		SELECT 
			DatePart(month, [selectParam].[DateTimeValue]) as [c1], 
			DatePart(year, [selectParam].[DateTimeValue]) as [c2], 
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

