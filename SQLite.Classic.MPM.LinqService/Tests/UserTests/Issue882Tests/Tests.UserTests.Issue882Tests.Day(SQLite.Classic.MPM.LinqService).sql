BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CAST(strftime('%d', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

