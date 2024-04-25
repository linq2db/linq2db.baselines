BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CAST(strftime('%S', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

