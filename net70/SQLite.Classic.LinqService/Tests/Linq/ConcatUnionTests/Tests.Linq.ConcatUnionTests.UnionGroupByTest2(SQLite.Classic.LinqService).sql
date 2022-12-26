BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[SmallIntValue],
	[_].[SmallIntValue],
	3
FROM
	[LinqDataTypes] [_]
UNION
SELECT
	Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int),
	1
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

