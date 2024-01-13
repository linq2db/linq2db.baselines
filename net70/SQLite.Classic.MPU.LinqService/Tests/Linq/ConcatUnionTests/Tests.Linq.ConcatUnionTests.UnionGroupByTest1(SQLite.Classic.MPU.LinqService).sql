BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Month_1],
	[t1].[Year_1],
	1
FROM
	(
		SELECT
			Cast(StrFTime('%m', [_].[DateTimeValue]) as int) as [Month_1],
			Cast(StrFTime('%Y', [_].[DateTimeValue]) as int) as [Year_1]
		FROM
			[LinqDataTypes] [_]
	) [t1]
GROUP BY
	[t1].[Month_1],
	[t1].[Year_1]
UNION
SELECT
	[t2].[month_1],
	[t2].[month_1],
	[t2].[int_1]
FROM
	(
		SELECT
			Cast([_1].[SmallIntValue] as INTEGER) as [month_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_1]
	) [t2]
UNION
SELECT
	[t3].[month_1],
	[t3].[month_1],
	[t3].[int_1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', [_2].[DateTimeValue]) as int) as [month_1],
			2 as [int_1]
		FROM
			[LinqDataTypes] [_2]
	) [t3]

