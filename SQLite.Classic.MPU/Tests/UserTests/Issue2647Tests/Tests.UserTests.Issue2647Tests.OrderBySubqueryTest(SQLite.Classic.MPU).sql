BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[LanguageId],
	[t1].[Text]
FROM
	[Issue2647Table] [t1]
ORDER BY
	[t1].[LanguageId],
	((
		SELECT
			COUNT(*)
		FROM
			[Issue2647Table] [ss2]
		WHERE
			[ss2].[Id] = [t1].[Id]
	) * 10000) / (
		SELECT
			COUNT(*)
		FROM
			[Issue2647Table] [ss2]
		WHERE
			[ss2].[Id] = [t1].[Id]
	) DESC

