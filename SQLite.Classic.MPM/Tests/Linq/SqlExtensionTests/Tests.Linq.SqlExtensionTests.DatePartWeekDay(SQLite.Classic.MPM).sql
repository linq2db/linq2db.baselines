-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Cast(strFTime('%w', [t].[DateTimeValue]) as int) + 1
FROM
	[LinqDataTypes] [t]

