BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = CAST('2001-01-11T01:11:21.1000000' AS DATETIME2)

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
	[t].[DateTimeValue] IN (@DateTimeValue)

