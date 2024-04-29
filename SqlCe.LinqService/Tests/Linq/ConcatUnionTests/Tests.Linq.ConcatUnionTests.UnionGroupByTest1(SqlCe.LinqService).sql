BeforeExecute
-- SqlCe

SELECT
	[t2].[Month_1] as [month_1],
	[t2].[Year_1] as [year_1],
	1 as [int_1]
FROM
	(
		SELECT
			DatePart(month, [t1].[DateTimeValue]) as [Month_1],
			DatePart(year, [t1].[DateTimeValue]) as [Year_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[Month_1],
	[t2].[Year_1]
UNION
SELECT
	[t3].[SmallIntValue] as [month_1],
	[t3].[SmallIntValue] as [year_1],
	3 as [int_1]
FROM
	[LinqDataTypes] [t3]
UNION
SELECT
	DatePart(year, [t4].[DateTimeValue]) as [month_1],
	DatePart(year, [t4].[DateTimeValue]) as [year_1],
	2 as [int_1]
FROM
	[LinqDataTypes] [t4]

