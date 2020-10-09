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
-- SQLite.MS SQLite

SELECT 
	[t1].[ID], 
	[t1].[MoneyValue], 
	[t1].[DateTimeValue], 
	[t1].[BoolValue], 
	[t1].[GuidValue], 
	[t1].[BinaryValue], 
	[t1].[SmallIntValue], 
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

