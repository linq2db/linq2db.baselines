BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST([t].[SmallIntValue] AS NVarChar(6)) || ' Minute')
FROM
	[LinqDataTypes] [t]

