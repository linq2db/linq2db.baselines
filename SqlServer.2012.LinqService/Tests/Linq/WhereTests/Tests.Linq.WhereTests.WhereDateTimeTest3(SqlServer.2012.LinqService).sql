BeforeExecute
-- SqlServer.2012 (asynchronously)

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
	[t1].[DateTimeValue] = DATETIME2FROMPARTS(2009, 9, 27, 0, 0, 0, 0, 3)

