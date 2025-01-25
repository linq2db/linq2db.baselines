BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

