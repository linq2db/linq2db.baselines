BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],[t].[SmallIntValue] || ' Hour')
FROM
	[LinqDataTypes] [t]

