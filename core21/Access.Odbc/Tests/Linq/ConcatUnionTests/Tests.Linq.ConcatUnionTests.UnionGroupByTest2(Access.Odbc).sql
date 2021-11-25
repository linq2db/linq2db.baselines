BeforeExecute
-- Access.Odbc AccessODBC

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
			DatePart('m', [selectParam].[DateTimeValue]) as [c1],
			DatePart('yyyy', [selectParam].[DateTimeValue]) as [c2],
			1 as [int_1]
		FROM
			[LinqDataTypes] [selectParam]
		GROUP BY
			DatePart('m', [selectParam].[DateTimeValue]),
			DatePart('yyyy', [selectParam].[DateTimeValue])
	) [t1]
UNION
SELECT
	DatePart('yyyy', [_1].[DateTimeValue]),
	DatePart('yyyy', [_1].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [_1]

