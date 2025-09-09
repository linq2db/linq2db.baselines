BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST([t].[SmallIntValue] AS NVarChar(6)) || ' Day')
FROM
	[LinqDataTypes] [t]

