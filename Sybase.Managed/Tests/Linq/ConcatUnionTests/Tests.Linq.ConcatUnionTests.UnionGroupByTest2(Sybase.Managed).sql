BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t2].[month_1],
	[t2].[month_1],
	[t2].[int_1]
FROM
	(
		SELECT
			[t1].[SmallIntValue] as [month_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
UNION
SELECT
	[t4].[month_1],
	[t4].[year_1],
	1
FROM
	(
		SELECT
			DatePart(month, [t3].[DateTimeValue]) as [month_1],
			DatePart(year, [t3].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [t3]
	) [t4]
GROUP BY
	[t4].[month_1],
	[t4].[year_1]
UNION
SELECT
	DatePart(year, [t5].[DateTimeValue]),
	DatePart(year, [t5].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [t5]

