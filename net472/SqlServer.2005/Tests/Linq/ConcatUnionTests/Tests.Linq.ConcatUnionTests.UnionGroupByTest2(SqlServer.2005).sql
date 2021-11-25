BeforeExecute
-- SqlServer.2005

SELECT
	[_].[SmallIntValue],
	[_].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_]
UNION
SELECT
	[t1].[c1],
	[t1].[c2],
	[t1].[int_1]
FROM
	(
		SELECT
			DatePart(month, [selectParam].[DateTimeValue]) as [c1],
			DatePart(year, [selectParam].[DateTimeValue]) as [c2],
			1 as [int_1]
		FROM
			[LinqDataTypes] [selectParam]
		GROUP BY
			DatePart(month, [selectParam].[DateTimeValue]),
			DatePart(year, [selectParam].[DateTimeValue])
	) [t1]
UNION
SELECT
	DatePart(year, [_1].[DateTimeValue]),
	DatePart(year, [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

