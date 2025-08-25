BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '-3 Month'))
FROM
	[LinqDataTypes] [t]

