-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t2].[month_1],
	[t2].[year_1],
	CAST(1 AS Int)
FROM
	(
		SELECT
			DatePart(month, [t1].[DateTimeValue]) as [month_1],
			DatePart(year, [t1].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[month_1],
	[t2].[year_1]
UNION
SELECT
	[t3].[SmallIntValue],
	[t3].[SmallIntValue],
	CAST(3 AS Int)
FROM
	[LinqDataTypes] [t3]
UNION
SELECT
	DatePart(year, [t4].[DateTimeValue]),
	DatePart(year, [t4].[DateTimeValue]),
	CAST(2 AS Int)
FROM
	[LinqDataTypes] [t4]

