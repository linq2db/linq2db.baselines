BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ResultId],
	[t1].[DefinitionId],
	[a_Definition].[DefinitionId],
	[a_Definition].[SetId],
	[a_Set].[SetId],
	[a_Set].[SectorId],
	[a_Sector].[Id]
FROM
	(([CtqResultModel] [t1]
		INNER JOIN [CtqDefinitionModel] [a_Definition] ON ([t1].[DefinitionId] = [a_Definition].[DefinitionId]))
		LEFT JOIN [CtqSetModel] [a_Set] ON ([a_Definition].[SetId] = [a_Set].[SetId]))
		LEFT JOIN [FtqSectorModel] [a_Sector] ON ([a_Set].[SectorId] = [a_Sector].[Id])

