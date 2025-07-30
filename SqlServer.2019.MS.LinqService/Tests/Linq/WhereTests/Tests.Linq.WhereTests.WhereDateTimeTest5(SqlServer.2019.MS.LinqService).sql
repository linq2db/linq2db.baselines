BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	CAST([t1].[DateTimeValue] AS Date) = CAST(DATETIMEFROMPARTS(2009, 9, 20, 0, 0, 0, 0) AS Date)

