BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Hour')) - julianday([t].[DateTimeValue])) * 24) AS INTEGER)
FROM
	[LinqDataTypes] [t]

