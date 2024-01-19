BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[month_1],
	[t1].[year_1],
	1
FROM
	(
		SELECT
			Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [month_1],
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [year_1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[month_1],
	[t1].[year_1]
UNION
SELECT
	[_].[SmallIntValue],
	[_].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

