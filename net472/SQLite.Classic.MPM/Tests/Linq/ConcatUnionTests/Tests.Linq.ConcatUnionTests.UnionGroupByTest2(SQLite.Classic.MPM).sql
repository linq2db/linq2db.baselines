BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t3].[year_1],
	[t3].[year_2],
	[t3].[int_1]
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
			[t2].[month_1] as [year_1],
			[t2].[year_1] as [year_2],
			1 as [int_1]
		FROM
			(
				SELECT
					[t1].[c1] as [month_1],
					[t1].[c2] as [year_1]
				FROM
					(
						SELECT
							Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [c1],
							Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [c2]
						FROM
							[LinqDataTypes] [selectParam]
					) [t1]
				GROUP BY
					[t1].[c1],
					[t1].[c2]
			) [t2]
	) [t3]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

