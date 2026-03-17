-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CAST(strftime('%j', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

