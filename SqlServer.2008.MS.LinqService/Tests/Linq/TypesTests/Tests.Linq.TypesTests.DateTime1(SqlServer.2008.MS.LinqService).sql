BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @dt DateTime2
SET     @dt = CAST('2009-09-20T09:19:29.0900000' AS DATETIME2)

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
	Convert(Date, [t].[DateTimeValue]) > Convert(Date, @dt)

