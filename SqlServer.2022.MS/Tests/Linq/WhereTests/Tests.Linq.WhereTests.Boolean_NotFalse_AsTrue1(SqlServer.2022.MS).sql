-- SqlServer.2022.MS SqlServer.2022

SELECT
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[BinaryValue],
	[r].[SmallIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[BoolValue] = 1

