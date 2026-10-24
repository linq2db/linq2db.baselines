-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[SmallIntValue],
	[t1].[SmallIntValue] as [year_1],
	3 as [int_1]
FROM
	[LinqDataTypes] [t1]
UNION
SELECT
	[t3].[month_1] as [SmallIntValue],
	[t3].[year_1],
	1 as [int_1]
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
	DatePart('yyyy', [t4].[DateTimeValue]) as [SmallIntValue],
	DatePart('yyyy', [t4].[DateTimeValue]) as [year_1],
	2 as [int_1]
FROM
	[LinqDataTypes] [t4]

