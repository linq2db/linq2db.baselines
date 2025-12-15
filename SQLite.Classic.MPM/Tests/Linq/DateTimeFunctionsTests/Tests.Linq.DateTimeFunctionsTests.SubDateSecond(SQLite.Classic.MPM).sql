-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], '100 Minute')) - julianday([t].[DateTimeValue])) * 86400)
FROM
	[LinqDataTypes] [t]

