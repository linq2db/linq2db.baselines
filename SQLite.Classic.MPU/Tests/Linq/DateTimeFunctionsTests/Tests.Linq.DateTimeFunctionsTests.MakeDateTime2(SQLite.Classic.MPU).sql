BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', DateTime('2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44')) as int) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

