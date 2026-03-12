-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [p].[DateTimeValue]) AS INTEGER)) || '-10-01 00:00:00.000')
FROM
	[LinqDataTypes] [p]

