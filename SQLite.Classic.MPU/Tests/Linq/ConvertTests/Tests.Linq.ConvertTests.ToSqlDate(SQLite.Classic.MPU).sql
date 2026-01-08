-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Date(CAST(CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) AS NVarChar(11)) || '-01-01')
FROM
	[LinqDataTypes] [t]

