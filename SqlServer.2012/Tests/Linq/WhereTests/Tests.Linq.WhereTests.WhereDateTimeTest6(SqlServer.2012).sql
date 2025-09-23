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
WHERE
	CAST([t1].[DateTimeValue] AS Date) = CAST(DATETIME2FROMPARTS(2009, 9, 20, 0, 0, 0, 0, 3) AS Date)

