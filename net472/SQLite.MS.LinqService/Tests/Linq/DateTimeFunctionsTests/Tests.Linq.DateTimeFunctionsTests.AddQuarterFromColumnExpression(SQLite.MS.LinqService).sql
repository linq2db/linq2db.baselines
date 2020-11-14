BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],([t].[SmallIntValue]*3) || ' Month')
FROM
	[LinqDataTypes] [t]

