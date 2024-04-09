BeforeExecute
-- SqlServer.SA SqlServer.2019

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
	[_].[DateTimeValue] = DATETIMEFROMPARTS(2009, 9, 27, 0, 0, 0, 0)

