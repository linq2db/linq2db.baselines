BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST(strftime('%j', [t].[DateTimeValue]) AS INTEGER) % 7
FROM
	[LinqDataTypes] [t]

