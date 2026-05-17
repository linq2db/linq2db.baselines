-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CAST(strftime('%w', [t].[DateTimeValue]) AS INTEGER) + 1
FROM
	[LinqDataTypes] [t]

