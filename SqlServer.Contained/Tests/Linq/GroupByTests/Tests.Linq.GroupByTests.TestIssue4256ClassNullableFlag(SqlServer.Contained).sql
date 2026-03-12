-- SqlServer.Contained SqlServer.2019

SELECT DISTINCT
	1,
	IIF([it].[SmallIntValue] <> 0, 1, 0)
FROM
	[LinqDataTypes] [it]

-- SqlServer.Contained SqlServer.2019

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

