BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[SmallIntValue],
	[_].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_]
UNION
SELECT
	[t1].[c1],
	[t1].[c2],
	[t1].[int_1]
FROM
	(
		SELECT
			Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [c1],
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [c2],
			1 as [int_1]
		FROM
			[LinqDataTypes] [selectParam]
		GROUP BY
			Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)
	) [t1]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

