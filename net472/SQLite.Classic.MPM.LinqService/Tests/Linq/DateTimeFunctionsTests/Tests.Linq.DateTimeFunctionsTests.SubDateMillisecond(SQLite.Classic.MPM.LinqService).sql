BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Cast((round((round((julianday(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(2023456789/1000.0) || ' Second')) - julianday([t].[DateTimeValue])) * 864000000000)) / 10000)) as Float)
FROM
	[LinqDataTypes] [t]

