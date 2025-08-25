BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '22 Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

