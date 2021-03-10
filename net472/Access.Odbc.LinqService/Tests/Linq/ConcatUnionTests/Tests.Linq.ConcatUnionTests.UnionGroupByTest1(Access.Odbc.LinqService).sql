BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t2].[month_1],
	[t2].[year_1],
	[t2].[int_1]
FROM
	(
		SELECT
			[t1].[month_1],
			[t1].[year_1],
			[t1].[int_1]
		FROM
			(
				SELECT
					DatePart('m', [selectParam].[DateTimeValue]) as [month_1],
					DatePart('yyyy', [selectParam].[DateTimeValue]) as [year_1],
					1 as [int_1]
				FROM
					[LinqDataTypes] [selectParam]
				GROUP BY
					DatePart('m', [selectParam].[DateTimeValue]),
					DatePart('yyyy', [selectParam].[DateTimeValue])
			) [t1]
		UNION
		SELECT
			[_].[SmallIntValue] as [month_1],
			[_].[SmallIntValue] as [year_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t2]
UNION
SELECT
	DatePart('yyyy', [_1].[DateTimeValue]),
	DatePart('yyyy', [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

