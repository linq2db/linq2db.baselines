-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[SmallIntValue],
	[t1].[SmallIntValue],
	CAST(3 AS Int)
FROM
	[LinqDataTypes] [t1]
UNION
SELECT
	[t3].[month_1],
	[t3].[year_1],
	CAST(1 AS Int)
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
	DatePart(year, [t4].[DateTimeValue]),
	DatePart(year, [t4].[DateTimeValue]),
	CAST(2 AS Int)
FROM
	[LinqDataTypes] [t4]

