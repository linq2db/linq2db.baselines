-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @language NVarChar(2) -- String
SET     @language = 'en'
DECLARE @Exercise NVarChar(1) -- String
SET     @Exercise = '1'
DECLARE @currentLanguage NVarChar(2) -- String
SET     @currentLanguage = 'en'
DECLARE @Equipment NVarChar(1) -- String
SET     @Equipment = '2'

SELECT
	[m_1].[Id],
	[equipment].[id],
	[equipment].[parent_id],
	[equipment].[name],
	[equipment].[icon],
	[equipment].[online],
	[equipment].[user_id],
	[equipment].[original_creator_id],
	[equipment].[is_private],
	[equipment].[organisation_id],
	[equipment].[original_organisation_id],
	[description].[content],
	[description].[id]
FROM
	(
		SELECT DISTINCT
			[exercise_1].[id] as [Id]
		FROM
			[exercise] [exercise_1]
				LEFT JOIN [ext_translations] [exerciseDescription] ON CAST([exercise_1].[id] AS NVarChar(11)) = [exerciseDescription].[foreign_key] AND [exerciseDescription].[locale] = @language AND [exerciseDescription].[object_class] = @Exercise AND [exerciseDescription].[field] = 'expl'
				LEFT JOIN [ext_translations] [exerciseStartDescription] ON CAST([exercise_1].[id] AS NVarChar(11)) = [exerciseStartDescription].[foreign_key] AND [exerciseStartDescription].[locale] = @language AND [exerciseStartDescription].[object_class] = @Exercise AND [exerciseStartDescription].[field] = 'startexpl'
	) [m_1]
		INNER JOIN [exercise_equipment_linker] [d] ON [m_1].[Id] = [d].[exercise_id]
		INNER JOIN [exercise_equipment] [equipment] ON [d].[equipment_id] = [equipment].[id]
		LEFT JOIN [ext_translations] [description] ON CAST([equipment].[id] AS NVarChar(11)) = [description].[foreign_key] AND [description].[locale] = @currentLanguage AND [description].[object_class] = @Equipment AND [description].[field] = 'name'

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @language NVarChar(2) -- String
SET     @language = 'en'
DECLARE @Exercise NVarChar(1) -- String
SET     @Exercise = '1'

SELECT
	[exercise_1].[id],
	[exercise_1].[is_private],
	[exercise_1].[number],
	[exercise_1].[level],
	CASE
		WHEN [exerciseDescription].[id] IS NOT NULL THEN [exerciseDescription].[content]
		ELSE [exercise_1].[expl]
	END,
	[exercise_1].[reeks],
	[exercise_1].[num],
	[exercise_1].[time],
	[exercise_1].[rest],
	[exercise_1].[side],
	[exercise_1].[image],
	[exercise_1].[video],
	CASE
		WHEN [exerciseStartDescription].[id] IS NOT NULL THEN [exerciseStartDescription].[content]
		ELSE [exercise_1].[startexpl]
	END
FROM
	[exercise] [exercise_1]
		LEFT JOIN [ext_translations] [exerciseDescription] ON CAST([exercise_1].[id] AS NVarChar(11)) = [exerciseDescription].[foreign_key] AND [exerciseDescription].[locale] = @language AND [exerciseDescription].[object_class] = @Exercise AND [exerciseDescription].[field] = 'expl'
		LEFT JOIN [ext_translations] [exerciseStartDescription] ON CAST([exercise_1].[id] AS NVarChar(11)) = [exerciseStartDescription].[foreign_key] AND [exerciseStartDescription].[locale] = @language AND [exerciseStartDescription].[object_class] = @Exercise AND [exerciseStartDescription].[field] = 'startexpl'
ORDER BY
	[exercise_1].[timestamp] DESC,
	[exercise_1].[id] DESC

