BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Date_1 DateTime2
SET     @Date_1 = DATETIME2FROMPARTS(2009, 9, 20, 0, 0, 0, 0, 7)

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
	Convert(Date, [t].[DateTimeValue]) > @Date_1

