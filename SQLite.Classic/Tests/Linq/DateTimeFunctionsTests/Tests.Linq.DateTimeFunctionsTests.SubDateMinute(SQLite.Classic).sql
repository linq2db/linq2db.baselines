BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Minute')) - julianday([t].[DateTimeValue])) * 1440) AS INTEGER)
FROM
	[LinqDataTypes] [t]

