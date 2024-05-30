BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Hour')) - julianday([t].[DateTimeValue])))
FROM
	[LinqDataTypes] [t]

