﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t3].[month_1],
	[t3].[year_1],
	[t3].[int_1]
FROM
	(
		SELECT
			[t2].[month_1],
			[t2].[year_1],
			[t2].[int_1]
		FROM
			(
				SELECT
					[t1].[month_1],
					[t1].[year_1],
					1 as [int_1]
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
			) [t2]
		UNION
		SELECT
			[_].[SmallIntValue] as [month_1],
			[_].[SmallIntValue] as [year_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t3]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

