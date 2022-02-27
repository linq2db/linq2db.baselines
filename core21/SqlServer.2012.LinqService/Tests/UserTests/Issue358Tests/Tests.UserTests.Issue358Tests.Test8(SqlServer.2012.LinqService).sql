BeforeExecute
-- SqlServer.2012

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
	(IIF([_].[BigIntValue] IN (2), 1, 0) = 0 OR IIF([_].[BigIntValue] IN (2), 1, 0) IS NULL)

