BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[x].[Id],
	[t1].[LanguageId],
	[t1].[Name]
FROM
	[Entity] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Entity2Language].[LanguageId],
				[a_Language].[Name]
			FROM
				[Entity2Language] [a_Entity2Language]
					LEFT JOIN [Language] [a_Language] ON [a_Entity2Language].[LanguageId] = [a_Language].[Id]
			WHERE
				[a_Entity2Language].[EntityId] = [x].[Id]
		) [t1]

