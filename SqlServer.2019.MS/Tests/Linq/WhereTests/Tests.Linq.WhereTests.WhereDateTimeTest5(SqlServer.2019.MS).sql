BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
	CAST([_].[DateTimeValue] AS Date) = CAST(DATETIMEFROMPARTS(2009, 9, 20, 0, 0, 0, 0) AS Date)

