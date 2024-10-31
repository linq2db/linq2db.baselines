BeforeExecute
-- SqlServer.2014

SELECT
	[t2].[year_1],
	[t2].[year_1],
	[t2].[int_1]
FROM
	(
		SELECT
			[t1].[SmallIntValue] as [year_1],
			CAST(3 AS Int) as [int_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
UNION
SELECT
	[t4].[month_1],
	[t4].[year_1],
	CAST(1 AS Int)
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
	CAST(2 AS Int)
FROM
	[LinqDataTypes] [t5]

