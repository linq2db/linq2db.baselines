SELECT
	[tt].[LanguageId],
	[tt].[TextId],
	[tt].[Text],
	[tt].[TooltipText]
FROM
	[TextTranslationDTO] [tt]
		INNER JOIN [TextDTO] [t] ON [tt].[TextId] = [t].[Id]
ORDER BY
	[tt].[LanguageId],
	[t].[ServerOnlyText]

SELECT
	[tt].[LanguageId],
	[tt].[TextId],
	[tt].[Text],
	[tt].[TooltipText]
FROM
	[TextTranslationDTO] [tt]
		INNER JOIN [TextDTO] [t] ON [tt].[TextId] = [t].[Id]

