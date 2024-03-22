BeforeExecute
-- SQLite.MS SQLite

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
	Cast([_1].[SmallIntValue] as INTEGER),
	Cast([_1].[SmallIntValue] as INTEGER),
	3
FROM
	[LinqDataTypes] [_1]
UNION
SELECT
	Cast(StrFTime('%Y', [_2].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_2].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_2]

