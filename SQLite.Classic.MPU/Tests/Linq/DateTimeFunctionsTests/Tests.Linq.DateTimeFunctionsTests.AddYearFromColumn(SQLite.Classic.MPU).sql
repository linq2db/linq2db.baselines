BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],[t].[SmallIntValue] || ' Year'))
FROM
	[LinqDataTypes] [t]

