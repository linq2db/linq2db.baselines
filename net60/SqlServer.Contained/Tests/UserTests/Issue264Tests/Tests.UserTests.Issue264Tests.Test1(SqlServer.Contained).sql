BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
		FROM
			(
				SELECT
					MONTH([selectParam].[DateTimeValue]) as [Key_1],
					YEAR([selectParam].[DateTimeValue]) as [Key_2]
				FROM
					[LinqDataTypes] [selectParam]
			) [t1]
		GROUP BY
			[t1].[Key_1],
			[t1].[Key_2]
	) [t2]

BeforeExecute
-- SQLite.MS SQLite

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

