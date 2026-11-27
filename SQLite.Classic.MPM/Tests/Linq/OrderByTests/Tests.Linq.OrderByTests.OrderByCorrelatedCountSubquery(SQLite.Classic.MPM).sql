-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t2].[Id],
	[t2].[LanguageId],
	[t2].[Text]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[LanguageId],
			[t1].[Text],
			(
				SELECT
					COUNT(*)
				FROM
					[OrderBySubqueryTable] [ss2]
				WHERE
					[ss2].[Id] = [t1].[Id]
			) as [Count_1]
		FROM
			[OrderBySubqueryTable] [t1]
	) [t2]
ORDER BY
	[t2].[LanguageId],
	([t2].[Count_1] * 10000) / [t2].[Count_1] DESC

