BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t2].[ID],
	[t2].[MoneyValue],
	[t2].[DateTimeValue],
	[t2].[DateTimeValue2],
	[t2].[BoolValue],
	[t2].[GuidValue],
	[t2].[SmallIntValue],
	[t2].[IntValue],
	[t2].[BigIntValue],
	[t2].[StringValue]
FROM
	(
		SELECT
			DateAdd(dd, DateDiff(dd, 0, [t1].[DateTimeValue]), 0) as [Date_1],
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
	) [t2]
WHERE
	([t2].[Date_1] = DateAdd(dd, DateDiff(dd, 0, CAST(N'2009-09-20' AS DateTime)), 0) OR [t2].[Date_1] IS NULL AND DateAdd(dd, DateDiff(dd, 0, CAST(N'2009-09-20' AS DateTime)), 0) IS NULL)

