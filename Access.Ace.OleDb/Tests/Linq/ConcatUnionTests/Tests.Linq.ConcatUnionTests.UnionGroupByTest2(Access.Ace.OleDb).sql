-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[SmallIntValue],
	[t1].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [t1]
UNION
SELECT
	[t3].[month_1],
	[t3].[year_1],
	1
FROM
	(
		SELECT DISTINCT
			DatePart('m', [t2].[DateTimeValue]) as [month_1],
			DatePart('yyyy', [t2].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [t2]
	) [t3]
UNION
SELECT
	DatePart('yyyy', [t4].[DateTimeValue]),
	DatePart('yyyy', [t4].[DateTimeValue]),
	2
FROM
	[LinqDataTypes] [t4]

