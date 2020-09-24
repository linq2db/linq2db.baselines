BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],2 || ' Month')
FROM
	[LinqDataTypes] [t]

