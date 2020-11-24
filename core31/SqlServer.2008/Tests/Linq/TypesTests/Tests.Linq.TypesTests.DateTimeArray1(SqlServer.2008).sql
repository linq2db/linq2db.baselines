BeforeExecute
-- SqlServer.2008
DECLARE @DateTimeValue_1 DateTime2
SET     @DateTimeValue_1 = '2001-01-11T01:11:21.1000000'

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
	[t].[DateTimeValue] IN (@DateTimeValue_1)

