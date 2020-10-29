BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t3].[month_1],
	[t3].[year_1],
	[t3].[int_1]
FROM
	(
		SELECT
			[t2].[month_1],
			[t2].[year_1],
			[t2].[int_1]
		FROM
			(
				SELECT
					[t1].[c1] as [month_1],
					[t1].[c2] as [year_1],
					1 as [int_1]
				FROM
					(
						SELECT
							DatePart(month, [selectParam].[DateTimeValue]) as [c1],
							DatePart(year, [selectParam].[DateTimeValue]) as [c2]
						FROM
							[LinqDataTypes] [selectParam]
					) [t1]
				GROUP BY
					[t1].[c1],
					[t1].[c2]
			) [t2]
		UNION
		SELECT
			[_].[SmallIntValue] as [month_1],
			[_].[SmallIntValue] as [year_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t3]
UNION
SELECT
	DatePart(year, [_1].[DateTimeValue]),
	DatePart(year, [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

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

