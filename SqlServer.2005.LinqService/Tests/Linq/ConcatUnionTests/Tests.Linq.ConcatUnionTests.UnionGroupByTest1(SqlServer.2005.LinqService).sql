BeforeExecute
-- SqlServer.2005

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
	[_1].[SmallIntValue],
	[_1].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_1]
UNION
SELECT
	DatePart(year, [_2].[DateTimeValue]),
	DatePart(year, [_2].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_2]

