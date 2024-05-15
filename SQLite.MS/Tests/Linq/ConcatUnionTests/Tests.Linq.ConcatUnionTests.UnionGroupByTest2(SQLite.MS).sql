BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[month_1],
	[t2].[month_1],
	[t2].[int_1]
FROM
	(
		SELECT
			[t1].[SmallIntValue] as [month_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
UNION
SELECT
	[t4].[month_1],
	[t4].[year_1],
	1
FROM
	(
		SELECT
			CAST(strftime('%m', [t3].[DateTimeValue]) AS INTEGER) as [month_1],
			CAST(strftime('%Y', [t3].[DateTimeValue]) AS INTEGER) as [year_1]
		FROM
			[LinqDataTypes] [t3]
	) [t4]
GROUP BY
	[t4].[month_1],
	[t4].[year_1]
UNION
SELECT
	CAST(strftime('%Y', [t5].[DateTimeValue]) AS INTEGER),
	CAST(strftime('%Y', [t5].[DateTimeValue]) AS INTEGER),
	2
FROM
	[LinqDataTypes] [t5]

