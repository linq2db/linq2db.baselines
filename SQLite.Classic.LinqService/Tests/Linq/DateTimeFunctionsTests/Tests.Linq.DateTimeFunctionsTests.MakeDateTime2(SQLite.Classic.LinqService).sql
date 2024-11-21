BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', '2010-' || printf('%02d', [p].[ID]) || '-01 20:35:44.000') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	CAST(strftime('%Y', [t].[c1]) AS INTEGER) = 2010

