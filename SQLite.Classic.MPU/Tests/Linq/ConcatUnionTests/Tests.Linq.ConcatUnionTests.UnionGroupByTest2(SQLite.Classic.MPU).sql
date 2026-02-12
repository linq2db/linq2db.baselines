-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[SmallIntValue],
	[t1].[SmallIntValue],
	CAST(3 AS INTEGER)
FROM
	[LinqDataTypes] [t1]
UNION
SELECT
	[t3].[month_1],
	[t3].[year_1],
	CAST(1 AS INTEGER)
FROM
	(
		SELECT DISTINCT
			CAST(strftime('%m', [t2].[DateTimeValue]) AS INTEGER) as [month_1],
			CAST(strftime('%Y', [t2].[DateTimeValue]) AS INTEGER) as [year_1]
		FROM
			[LinqDataTypes] [t2]
	) [t3]
UNION
SELECT
	CAST(strftime('%Y', [t4].[DateTimeValue]) AS INTEGER),
	CAST(strftime('%Y', [t4].[DateTimeValue]) AS INTEGER),
	CAST(2 AS INTEGER)
FROM
	[LinqDataTypes] [t4]

