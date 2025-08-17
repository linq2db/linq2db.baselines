BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	strftime('%Y-%m-%d %H:%M:%f', '2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44.000')
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', '2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44.000')) AS INTEGER) = 2010

