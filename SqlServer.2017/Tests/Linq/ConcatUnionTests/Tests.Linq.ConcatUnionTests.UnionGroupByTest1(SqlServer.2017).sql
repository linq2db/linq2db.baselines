BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Month_1],
	[t1].[Year_1],
	1
FROM
	(
		SELECT
			DatePart(month, [_].[DateTimeValue]) as [Month_1],
			DatePart(year, [_].[DateTimeValue]) as [Year_1]
		FROM
			[LinqDataTypes] [_]
	) [t1]
GROUP BY
	[t1].[Month_1],
	[t1].[Year_1]
UNION
SELECT
	[t2].[month_1],
	[t2].[month_1],
	[t2].[int_1]
FROM
	(
		SELECT
			[_1].[SmallIntValue] as [month_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_1]
	) [t2]
UNION
SELECT
	[t3].[month_1],
	[t3].[month_1],
	[t3].[int_1]
FROM
	(
		SELECT
			DatePart(year, [_2].[DateTimeValue]) as [month_1],
			2 as [int_1]
		FROM
			[LinqDataTypes] [_2]
	) [t3]

