BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', DateTime('2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44')) as int) as [Year_1],
			DateTime('2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

