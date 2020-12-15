BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
		FROM
			(
				SELECT
					MONTH([selectParam].[DateTimeValue]) as [c1],
					YEAR([selectParam].[DateTimeValue]) as [c2]
				FROM
					[LinqDataTypes] [selectParam]
			) [t1]
		GROUP BY
			[t1].[c1],
			[t1].[c2]
	) [t2]

BeforeExecute
-- SQLite.Classic SQLite

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

