BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '-7 Day'))
FROM
	[LinqDataTypes] [t]

