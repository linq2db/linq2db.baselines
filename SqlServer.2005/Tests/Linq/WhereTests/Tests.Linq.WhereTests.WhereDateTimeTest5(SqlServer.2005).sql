-- SqlServer.2005

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
	DateAdd(dd, DateDiff(dd, 0, [t1].[DateTimeValue]), 0) = DateAdd(dd, DateDiff(dd, 0, CAST('2009-09-20' AS DateTime)), 0)

