BeforeExecute
-- SqlServer.2012

SELECT
	[t3].[year_1],
	[t3].[year_2],
	[t3].[int_1]
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
			[t2].[month_1] as [year_1],
			[t2].[year_1] as [year_2],
			[t2].[int_1]
		FROM
			(
				SELECT
					[t1].[c1] as [month_1],
					[t1].[c2] as [year_1],
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
	) [t3]
UNION
SELECT
	DatePart(year, [_1].[DateTimeValue]),
	DatePart(year, [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

