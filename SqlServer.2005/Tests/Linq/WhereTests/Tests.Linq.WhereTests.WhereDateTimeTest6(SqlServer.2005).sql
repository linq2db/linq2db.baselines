BeforeExecute
-- SqlServer.2005

SELECT
	[_1].[ID],
	[_1].[MoneyValue],
	[_1].[DateTimeValue],
	[_1].[DateTimeValue2],
	[_1].[BoolValue],
	[_1].[GuidValue],
	[_1].[SmallIntValue],
	[_1].[IntValue],
	[_1].[BigIntValue],
	[_1].[StringValue]
FROM
	(
		SELECT
			DateAdd(dd, DateDiff(dd, 0, [_].[DateTimeValue]), 0) as [Date_1],
			[_].[ID],
			[_].[MoneyValue],
			[_].[DateTimeValue],
			[_].[DateTimeValue2],
			[_].[BoolValue],
			[_].[GuidValue],
			[_].[SmallIntValue],
			[_].[IntValue],
			[_].[BigIntValue],
			[_].[StringValue]
		FROM
			[LinqDataTypes] [_]
	) [_1]
WHERE
	([_1].[Date_1] = DateAdd(dd, DateDiff(dd, 0, CAST(N'2009-09-20' AS DateTime)), 0) OR [_1].[Date_1] IS NULL AND DateAdd(dd, DateDiff(dd, 0, CAST(N'2009-09-20' AS DateTime)), 0) IS NULL)

