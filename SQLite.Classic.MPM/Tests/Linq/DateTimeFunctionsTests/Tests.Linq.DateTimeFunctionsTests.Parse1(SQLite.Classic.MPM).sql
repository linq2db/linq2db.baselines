-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Date([d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	CAST(strftime('%d', [d].[DateTimeValue]) AS INTEGER) > 0

