BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[Month_1],
	[t2].[Year_1],
	CAST(1 AS INTEGER)
FROM
	(
		SELECT
			CAST(strftime('%m', [t1].[DateTimeValue]) AS INTEGER) as [Month_1],
			CAST(strftime('%Y', [t1].[DateTimeValue]) AS INTEGER) as [Year_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[Month_1],
	[t2].[Year_1]
UNION
SELECT
	[t3].[SmallIntValue],
	[t3].[SmallIntValue],
	CAST(3 AS INTEGER)
FROM
	[LinqDataTypes] [t3]
UNION
SELECT
	CAST(strftime('%Y', [t4].[DateTimeValue]) AS INTEGER),
	CAST(strftime('%Y', [t4].[DateTimeValue]) AS INTEGER),
	CAST(2 AS INTEGER)
FROM
	[LinqDataTypes] [t4]

