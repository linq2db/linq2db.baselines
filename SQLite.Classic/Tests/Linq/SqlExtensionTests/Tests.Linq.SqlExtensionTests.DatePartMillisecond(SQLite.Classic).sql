-- SQLite.Classic SQLite

SELECT
	Cast(strFTime('%f', [t].[DateTimeValue]) * 1000 as int) % 1000
FROM
	[LinqDataTypes] [t]

