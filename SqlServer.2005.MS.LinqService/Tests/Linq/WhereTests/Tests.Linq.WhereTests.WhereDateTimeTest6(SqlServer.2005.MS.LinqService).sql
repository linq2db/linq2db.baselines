BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Date DateTime
SET     @Date = CAST('2009-09-20T00:00:00.000' AS DATETIME)

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
	Cast(Floor(Cast([_].[DateTimeValue] as Float)) as DateTime) = @Date

