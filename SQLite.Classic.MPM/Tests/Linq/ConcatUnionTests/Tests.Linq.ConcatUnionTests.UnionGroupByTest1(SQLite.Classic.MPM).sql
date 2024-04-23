BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Month_1],
	[t1].[Year_1],
	1
FROM
	(
		SELECT
			CAST(strftime('%m', [_].[DateTimeValue]) AS INTEGER) as [Month_1],
			CAST(strftime('%Y', [_].[DateTimeValue]) AS INTEGER) as [Year_1]
		FROM
			[LinqDataTypes] [_]
	) [t1]
GROUP BY
	[t1].[Month_1],
	[t1].[Year_1]
UNION
SELECT
	[_1].[SmallIntValue],
	[_1].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_1]
UNION
SELECT
	CAST(strftime('%Y', [_2].[DateTimeValue]) AS INTEGER),
	CAST(strftime('%Y', [_2].[DateTimeValue]) AS INTEGER),
	2
FROM
	[LinqDataTypes] [_2]

