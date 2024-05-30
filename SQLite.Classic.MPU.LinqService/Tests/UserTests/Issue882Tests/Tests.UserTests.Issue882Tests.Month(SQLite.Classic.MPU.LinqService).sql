BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CAST(strftime('%m', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

