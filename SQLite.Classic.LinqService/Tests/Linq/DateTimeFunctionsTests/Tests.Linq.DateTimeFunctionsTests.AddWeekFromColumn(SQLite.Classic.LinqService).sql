BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST([t].[SmallIntValue] * 7 AS NVarChar(6)) || ' Day'))
FROM
	[LinqDataTypes] [t]

