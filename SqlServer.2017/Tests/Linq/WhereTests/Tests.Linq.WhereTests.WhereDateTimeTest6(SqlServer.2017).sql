BeforeExecute
-- SqlServer.2017

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	CAST([_].[DateTimeValue] AS Date) = CAST(DATETIMEFROMPARTS(2009, 9, 20, 0, 0, 0, 0) AS Date)

