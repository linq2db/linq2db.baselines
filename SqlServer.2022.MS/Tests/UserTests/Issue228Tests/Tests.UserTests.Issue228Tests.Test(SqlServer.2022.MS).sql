BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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

