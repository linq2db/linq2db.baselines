-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Date(strftime('%Y', [t].[DateTimeValue]) || '-01-01')
FROM
	[LinqDataTypes] [t]

