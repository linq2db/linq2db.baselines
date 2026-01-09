-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CAST(CAST(strftime('%Y', [p].[DateTimeValue]) AS INTEGER) AS NVarChar(11)) || '-01-01 00:00:00')
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', CAST(CAST(strftime('%Y', [p].[DateTimeValue]) AS INTEGER) AS NVarChar(11)) || '-01-01 00:00:00')) AS INTEGER) > 0

