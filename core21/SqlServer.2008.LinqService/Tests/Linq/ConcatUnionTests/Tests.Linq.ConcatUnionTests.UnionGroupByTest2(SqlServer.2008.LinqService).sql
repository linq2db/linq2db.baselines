BeforeExecute
-- SqlServer.2008

SELECT
	[t2].[year_1],
	[t2].[year_2],
	[t2].[int_1]
FROM
	(
		SELECT
			[_].[SmallIntValue] as [year_1],
			[_].[SmallIntValue] as [year_2],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
		UNION
		SELECT
			[t1].[c1] as [year_1],
			[t1].[c2] as [year_2],
			1 as [int_1]
		FROM
			(
				SELECT
					DatePart(month, [selectParam].[DateTimeValue]) as [c1],
					DatePart(year, [selectParam].[DateTimeValue]) as [c2]
				FROM
					[LinqDataTypes] [selectParam]
			) [t1]
		GROUP BY
			[t1].[c1],
			[t1].[c2]
	) [t2]
UNION
SELECT
	[t3].[year_1],
	[t3].[year_1],
	[t3].[int_1]
FROM
	(
		SELECT
			DatePart(year, [_1].[DateTimeValue]) as [year_1],
			2 as [int_1]
		FROM
			[LinqDataTypes] [_1]
	) [t3]

