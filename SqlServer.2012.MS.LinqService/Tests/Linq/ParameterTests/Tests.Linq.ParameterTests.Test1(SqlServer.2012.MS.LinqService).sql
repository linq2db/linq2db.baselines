BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

