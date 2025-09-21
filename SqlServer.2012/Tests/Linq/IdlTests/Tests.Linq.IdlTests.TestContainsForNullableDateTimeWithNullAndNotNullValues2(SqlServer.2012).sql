BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [x]
WHERE
	([x].[DateTimeValue2] IN (DATETIMEFROMPARTS(2009, 9, 24, 9, 19, 29, 90)) OR [x].[DateTimeValue2] IS NULL)

