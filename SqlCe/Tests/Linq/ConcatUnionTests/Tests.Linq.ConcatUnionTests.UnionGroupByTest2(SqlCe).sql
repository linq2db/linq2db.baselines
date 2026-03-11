-- SqlCe

SELECT
	[t1].[SmallIntValue] as [month_1],
	[t1].[SmallIntValue] as [year_1],
	CAST(3 AS Int) as [int_1]
FROM
	[LinqDataTypes] [t1]
UNION
SELECT
	[t3].[month_1],
	[t3].[year_1],
	CAST(1 AS Int) as [int_1]
FROM
	(
		SELECT DISTINCT
			DatePart(month, [t2].[DateTimeValue]) as [month_1],
			DatePart(year, [t2].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [t2]
	) [t3]
UNION
SELECT
	DatePart(year, [t4].[DateTimeValue]) as [month_1],
	DatePart(year, [t4].[DateTimeValue]) as [year_1],
	CAST(2 AS Int) as [int_1]
FROM
	[LinqDataTypes] [t4]

