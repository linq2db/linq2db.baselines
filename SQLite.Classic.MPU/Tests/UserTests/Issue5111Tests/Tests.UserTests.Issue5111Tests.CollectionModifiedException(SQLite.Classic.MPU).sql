BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[LanguageId],
	[t1].[TextId],
	[t1].[Text],
	[t1].[TooltipText]
FROM
	[TextTranslationDTO] [t1]
ORDER BY
	(
		SELECT
			COUNT(*)
		FROM
			[LanguageDTO] [l]
		WHERE
			[l].[AlternativeLanguageID] = [t1].[LanguageId]
	),
	(
		SELECT
			[t].[ServerOnlyText]
		FROM
			[TextDTO] [t]
		WHERE
			[t].[Id] = [t1].[TextId]
	),
	[t1].[TooltipText]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[LanguageId],
	[t1].[TextId],
	[t1].[Text],
	[t1].[TooltipText]
FROM
	[TextTranslationDTO] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[LanguageID],
	[t1].[Name],
	[t1].[AlternativeLanguageID]
FROM
	[LanguageDTO] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Nr],
	[t1].[ServerOnlyText]
FROM
	[TextDTO] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[LanguageId],
	[t1].[TextId],
	[t1].[Text],
	[t1].[TooltipText]
FROM
	[TextTranslationDTO] [t1]
ORDER BY
	(
		SELECT
			COUNT(*)
		FROM
			[LanguageDTO] [l]
		WHERE
			[l].[AlternativeLanguageID] = [t1].[LanguageId]
	),
	(
		SELECT
			[t].[ServerOnlyText]
		FROM
			[TextDTO] [t]
		WHERE
			[t].[Id] = [t1].[TextId]
	),
	[t1].[TooltipText]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[LanguageId],
	[t1].[TextId],
	[t1].[Text],
	[t1].[TooltipText]
FROM
	[TextTranslationDTO] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[LanguageID],
	[t1].[Name],
	[t1].[AlternativeLanguageID]
FROM
	[LanguageDTO] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Nr],
	[t1].[ServerOnlyText]
FROM
	[TextDTO] [t1]

