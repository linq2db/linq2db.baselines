﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t4].[month_1],
	[t4].[year_1],
	[t4].[int_1]
FROM
	(
		SELECT
			[t2].[month_1],
			[t2].[year_1],
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
		UNION
		SELECT
			[t3].[year_1] as [month_1],
			[t3].[year_1],
			[t3].[int_1]
		FROM
			(
				SELECT
					[_].[SmallIntValue] as [year_1],
					3 as [int_1]
				FROM
					[LinqDataTypes] [_]
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

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

