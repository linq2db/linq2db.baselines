BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t2].[year_1],
	[t2].[year_2],
	[t2].[int_1]
FROM
	(
		SELECT
			[_].[SmallIntValue] as [year_1],
			[_].[SmallIntValue] as [year_2],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
		UNION
		SELECT
			[t1].[month_1] as [year_1],
			[t1].[year_1] as [year_2],
			[t1].[int_1]
		FROM
			(
				SELECT
					Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [month_1],
					Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [year_1],
					1 as [int_1]
				FROM
					[LinqDataTypes] [selectParam]
				GROUP BY
					Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
					Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)
			) [t1]
	) [t2]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

