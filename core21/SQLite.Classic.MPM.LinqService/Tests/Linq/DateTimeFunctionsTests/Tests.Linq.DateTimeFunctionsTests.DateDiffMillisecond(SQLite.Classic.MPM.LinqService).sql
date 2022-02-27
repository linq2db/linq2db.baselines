BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],1 || ' Second')) - julianday([t].[DateTimeValue])) * 86400000)
FROM
	[LinqDataTypes] [t]

