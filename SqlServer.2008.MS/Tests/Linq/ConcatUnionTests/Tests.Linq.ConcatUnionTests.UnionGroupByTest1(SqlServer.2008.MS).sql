BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t2].[month_1],
	[t2].[year_1],
	1
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
	3
FROM
	[LinqDataTypes] [t3]
UNION
SELECT
	DatePart(year, [t4].[DateTimeValue]),
	DatePart(year, [t4].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [t4]

