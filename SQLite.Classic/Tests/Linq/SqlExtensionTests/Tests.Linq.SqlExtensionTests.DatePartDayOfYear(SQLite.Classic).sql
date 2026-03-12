-- SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%j', [t].[DateTimeValue]) as int)
FROM
	[LinqDataTypes] [t]

