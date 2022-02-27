BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[LinqDataTypes] [x]
WHERE
	([x].[DateTimeValue2] IN ('2009-09-24T09:19:29.090') OR [x].[DateTimeValue2] IS NULL)

