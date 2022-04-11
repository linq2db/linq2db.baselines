BeforeExecute
-- Access AccessOleDb

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
	[_].[SmallIntValue],
	[_].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_]
UNION
SELECT
	DatePart('yyyy', [_1].[DateTimeValue]),
	DatePart('yyyy', [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

