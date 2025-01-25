BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
WHERE
	[t1].[DateTimeValue] > DATETIMEFROMPARTS(2009, 1, 1, 0, 0, 0, 0)

