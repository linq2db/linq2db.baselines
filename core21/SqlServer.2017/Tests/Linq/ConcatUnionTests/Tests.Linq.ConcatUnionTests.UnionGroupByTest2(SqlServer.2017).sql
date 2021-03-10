﻿BeforeExecute
-- SqlServer.2017

SELECT
	[t4].[year_1],
	[t4].[year_2],
	[t4].[int_1]
FROM
	(
		SELECT
			[t1].[year_1],
			[t1].[year_1] as [year_2],
			[t1].[int_1]
		FROM
			(
				SELECT
					[_].[SmallIntValue] as [year_1],
					3 as [int_1]
				FROM
					[LinqDataTypes] [_]
			) [t1]
		UNION
		SELECT
			[t3].[month_1] as [year_1],
			[t3].[year_1] as [year_2],
			[t3].[int_1]
		FROM
			(
				SELECT
					[t2].[c1] as [month_1],
					[t2].[c2] as [year_1],
					1 as [int_1]
				FROM
					(
						SELECT
							DatePart(month, [selectParam].[DateTimeValue]) as [c1],
							DatePart(year, [selectParam].[DateTimeValue]) as [c2]
						FROM
							[LinqDataTypes] [selectParam]
					) [t2]
				GROUP BY
					[t2].[c1],
					[t2].[c2]
			) [t3]
	) [t4]
UNION
SELECT
	[t5].[year_1],
	[t5].[year_1],
	[t5].[int_1]
FROM
	(
		SELECT
			DatePart(year, [_1].[DateTimeValue]) as [year_1],
			2 as [int_1]
		FROM
			[LinqDataTypes] [_1]
	) [t5]

