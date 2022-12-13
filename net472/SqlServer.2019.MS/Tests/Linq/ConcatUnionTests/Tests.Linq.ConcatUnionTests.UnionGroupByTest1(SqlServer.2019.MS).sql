BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[month_1],
	[t1].[year_1],
	1
FROM
	(
		SELECT
			DatePart(month, [selectParam].[DateTimeValue]) as [month_1],
			DatePart(year, [selectParam].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[month_1],
	[t1].[year_1]
UNION
SELECT
	[_].[SmallIntValue],
	[_].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_]
UNION
SELECT
	DatePart(year, [_1].[DateTimeValue]),
	DatePart(year, [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

