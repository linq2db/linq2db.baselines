BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],Cast([t].[SmallIntValue] as Float) || ' Hour')
FROM
	[LinqDataTypes] [t]

