BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
	Convert(Date, [_].[DateTimeValue]) = Convert(Date, DATETIMEFROMPARTS(2009, 9, 20, 0, 0, 0, 0))

