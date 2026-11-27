SELECT
	[tt].[LanguageId],
	[tt].[TextId],
	[tt].[Text],
	[tt].[TooltipText]
FROM
	[CleanUpTextTranslation] [tt]
		INNER JOIN [CleanUpText] [t] ON [tt].[TextId] = [t].[Id]
ORDER BY
	[tt].[LanguageId],
	[t].[ServerOnlyText]

SELECT
	[tt].[LanguageId],
	[tt].[TextId],
	[tt].[Text],
	[tt].[TooltipText]
FROM
	[CleanUpTextTranslation] [tt]
		INNER JOIN [CleanUpText] [t] ON [tt].[TextId] = [t].[Id]

