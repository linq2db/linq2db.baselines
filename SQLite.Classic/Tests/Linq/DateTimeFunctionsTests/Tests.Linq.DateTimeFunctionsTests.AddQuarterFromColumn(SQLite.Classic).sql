-- SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST([t].[SmallIntValue] * 3 AS NVarChar(6)) || ' Month'))
FROM
	[LinqDataTypes] [t]

