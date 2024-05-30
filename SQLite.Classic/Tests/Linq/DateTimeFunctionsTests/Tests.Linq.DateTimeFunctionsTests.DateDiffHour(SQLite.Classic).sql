BeforeExecute
-- SQLite.Classic SQLite

SELECT
	round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Hour')) - julianday([t].[DateTimeValue])) * 24)
FROM
	[LinqDataTypes] [t]

