BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', '2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44.000') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	CAST(strftime('%Y', [t_1].[c1]) AS INTEGER) = 2010

