BeforeExecute
-- SqlServer.2014
DECLARE @dt DateTime2
SET     @dt = DATETIME2FROMPARTS(2009, 9, 20, 9, 19, 29, 900000, 7)

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

