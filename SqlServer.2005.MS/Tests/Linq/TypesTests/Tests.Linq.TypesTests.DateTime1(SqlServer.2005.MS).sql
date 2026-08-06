-- SqlServer.2005.MS SqlServer.2005
DECLARE @Date DateTime
SET     @Date = CAST('2009-09-20T00:00:00.000' AS DATETIME)

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DateAdd(dd, DateDiff(dd, 0, [t].[DateTimeValue]), 0) > @Date

