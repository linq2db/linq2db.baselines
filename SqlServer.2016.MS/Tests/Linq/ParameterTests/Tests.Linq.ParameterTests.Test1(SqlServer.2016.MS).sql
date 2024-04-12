BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
	[t].[DateTimeValue] = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

