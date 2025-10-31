-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', '2010-' || printf('%02d', [t].[ID]) || '-01 00:00:00.000')
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', '2010-' || printf('%02d', [t].[ID]) || '-01 00:00:00.000')) AS INTEGER) = 2010

