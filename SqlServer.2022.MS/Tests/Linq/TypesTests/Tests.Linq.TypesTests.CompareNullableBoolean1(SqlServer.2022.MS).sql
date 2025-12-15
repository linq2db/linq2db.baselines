-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]

-- SqlServer.2022.MS SqlServer.2022
DECLARE @param Bit -- Boolean
SET     @param = 1

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[BoolValue] = @param

