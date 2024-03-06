BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', Date('2010-' || printf('%02d', [t].[ID]) || '-01')) as int) as [Year_1],
			Date('2010-' || printf('%02d', [t].[ID]) || '-01') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

