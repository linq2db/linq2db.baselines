BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	Date(CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) || '-01-01')
FROM
	[LinqDataTypes] [t]

