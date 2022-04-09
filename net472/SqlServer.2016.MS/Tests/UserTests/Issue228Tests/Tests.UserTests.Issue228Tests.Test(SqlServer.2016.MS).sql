BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[BinaryValue],
	[_].[SmallIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	([_].[ID] NOT IN (1) AND [_].[ID] NOT IN (2))

