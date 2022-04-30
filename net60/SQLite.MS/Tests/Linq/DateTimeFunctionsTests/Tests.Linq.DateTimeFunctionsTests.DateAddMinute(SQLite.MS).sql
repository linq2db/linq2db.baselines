BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],5 || ' Minute')
FROM
	[LinqDataTypes] [t]

