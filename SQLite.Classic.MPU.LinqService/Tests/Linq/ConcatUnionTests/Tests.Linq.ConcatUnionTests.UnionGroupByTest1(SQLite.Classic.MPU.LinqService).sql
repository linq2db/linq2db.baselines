BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t2].[month_1],
	[t2].[year_1],
	1
FROM
	(
		SELECT
			CAST(strftime('%m', [t1].[DateTimeValue]) AS INTEGER) as [month_1],
			CAST(strftime('%Y', [t1].[DateTimeValue]) AS INTEGER) as [year_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[month_1],
	[t2].[year_1]
UNION
SELECT
	[t3].[SmallIntValue],
	[t3].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [t3]
UNION
SELECT
	CAST(strftime('%Y', [t4].[DateTimeValue]) AS INTEGER),
	CAST(strftime('%Y', [t4].[DateTimeValue]) AS INTEGER),
	2
FROM
	[LinqDataTypes] [t4]

