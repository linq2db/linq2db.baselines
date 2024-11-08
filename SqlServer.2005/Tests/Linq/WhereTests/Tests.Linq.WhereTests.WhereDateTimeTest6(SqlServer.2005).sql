BeforeExecute
-- SqlServer.2005

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
	DateAdd(dd, DateDiff(dd, 0, [t1].[DateTimeValue]), 0) = DateAdd(dd, DateDiff(dd, 0, CAST(N'2009-09-20' AS DateTime)), 0) OR
	DateAdd(dd, DateDiff(dd, 0, [t1].[DateTimeValue]), 0) IS NULL AND DateAdd(dd, DateDiff(dd, 0, CAST(N'2009-09-20' AS DateTime)), 0) IS NULL

