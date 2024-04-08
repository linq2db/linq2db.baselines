BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[month_1],
	[t1].[month_1],
	[t1].[int_1]
FROM
	(
		SELECT
			[_].[SmallIntValue] as [month_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t1]
UNION
SELECT
	[t2].[Month_1],
	[t2].[Year_1],
	1
FROM
	(
		SELECT
			CAST(strftime('%m', [_1].[DateTimeValue]) AS INTEGER) as [Month_1],
			CAST(strftime('%Y', [_1].[DateTimeValue]) AS INTEGER) as [Year_1]
		FROM
			[LinqDataTypes] [_1]
	) [t2]
GROUP BY
	[t2].[Month_1],
	[t2].[Year_1]
UNION
SELECT
	CAST(strftime('%Y', [_2].[DateTimeValue]) AS INTEGER),
	CAST(strftime('%Y', [_2].[DateTimeValue]) AS INTEGER),
	2
FROM
	[LinqDataTypes] [_2]

