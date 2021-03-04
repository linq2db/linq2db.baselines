BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],Cast([t].[SmallIntValue] as Float) || ' Month')
FROM
	[LinqDataTypes] [t]

