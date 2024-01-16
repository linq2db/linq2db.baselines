BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(-1*7) || ' Day')
FROM
	[LinqDataTypes] [t]

