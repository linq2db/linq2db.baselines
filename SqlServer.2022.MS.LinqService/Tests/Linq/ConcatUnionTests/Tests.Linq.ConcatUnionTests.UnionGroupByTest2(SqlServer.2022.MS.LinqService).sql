BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[month_1],
	[t1].[month_1],
	[t1].[int_1]
FROM
	(
		SELECT
			[_].[SmallIntValue] as [month_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t1]
UNION
SELECT
	[t2].[Month_1],
	[t2].[Year_1],
	1
FROM
	(
		SELECT
			DatePart(month, [_1].[DateTimeValue]) as [Month_1],
			DatePart(year, [_1].[DateTimeValue]) as [Year_1]
		FROM
			[LinqDataTypes] [_1]
	) [t2]
GROUP BY
	[t2].[Month_1],
	[t2].[Year_1]
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

