BeforeExecute
-- SqlCe

SELECT
	[t1].[Month_1] as [month_1],
	[t1].[Year_1] as [year_1],
	1 as [int_1]
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
	[_1].[SmallIntValue] as [month_1],
	[_1].[SmallIntValue] as [year_1],
	3 as [int_1]
FROM
	[LinqDataTypes] [_1]
UNION
SELECT
	DatePart(year, [_2].[DateTimeValue]) as [month_1],
	DatePart(year, [_2].[DateTimeValue]) as [year_1],
	2 as [int_1]
FROM
	[LinqDataTypes] [_2]

