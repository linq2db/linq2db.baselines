BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],41 || ' Second')
FROM
	[LinqDataTypes] [t]

