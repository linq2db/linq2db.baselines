BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST(round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Hour')) - julianday([t].[DateTimeValue]))) AS INTEGER)
FROM
	[LinqDataTypes] [t]

