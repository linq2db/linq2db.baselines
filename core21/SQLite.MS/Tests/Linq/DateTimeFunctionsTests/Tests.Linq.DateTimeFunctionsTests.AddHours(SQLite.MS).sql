BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],22 || ' Hour')
FROM
	[LinqDataTypes] [t]

