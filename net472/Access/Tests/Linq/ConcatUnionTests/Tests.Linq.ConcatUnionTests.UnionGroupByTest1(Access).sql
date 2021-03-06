﻿BeforeExecute
-- Access AccessOleDb

SELECT
	[t3].[month_1],
	[t3].[year_1],
	[t3].[int_1]
FROM
	(
		SELECT
			[t2].[month_1],
			[t2].[year_1],
			[t2].[int_1]
		FROM
			(
				SELECT
					[t1].[month_1],
					[t1].[year_1],
					1 as [int_1]
				FROM
					(
						SELECT
							DatePart('m', [selectParam].[DateTimeValue]) as [month_1],
							DatePart('yyyy', [selectParam].[DateTimeValue]) as [year_1]
						FROM
							[LinqDataTypes] [selectParam]
					) [t1]
				GROUP BY
					[t1].[month_1],
					[t1].[year_1]
			) [t2]
		UNION
		SELECT
			[_].[SmallIntValue] as [month_1],
			[_].[SmallIntValue] as [year_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t3]
UNION
SELECT
	DatePart('yyyy', [_1].[DateTimeValue]),
	DatePart('yyyy', [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

BeforeExecute
-- Access AccessOleDb

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

