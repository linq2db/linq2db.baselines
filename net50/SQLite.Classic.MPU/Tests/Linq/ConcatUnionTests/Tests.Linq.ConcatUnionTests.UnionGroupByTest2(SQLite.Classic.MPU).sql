BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t3].[c1],
	[t3].[c2],
	[t3].[c3]
FROM
	(
		SELECT
			[_].[SmallIntValue] as [c1],
			[_].[SmallIntValue] as [c2],
			3 as [c3]
		FROM
			[LinqDataTypes] [_]
		UNION
		SELECT
			[t2].[c1],
			[t2].[c2],
			[t2].[int_1] as [c3]
		FROM
			(
				SELECT
					[t1].[c1],
					[t1].[c2],
					1 as [int_1]
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

