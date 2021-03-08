BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [exercise]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [exercise]
(
	[id]         INTEGER       NOT NULL,
	[name]       NVarChar(255)     NULL,
	[number]     INTEGER           NULL,
	[startexpl]  NVarChar(255)     NULL,
	[level]      INTEGER       NOT NULL,
	[expl]       NVarChar(255) NOT NULL,
	[date]       DateTime2     NOT NULL,
	[image]      NVarChar(255)     NULL,
	[video]      NVarChar(255)     NULL,
	[num]        INTEGER       NOT NULL,
	[side]       INTEGER       NOT NULL,
	[reeks]      INTEGER       NOT NULL,
	[time]       INTEGER       NOT NULL,
	[rest]       INTEGER       NOT NULL,
	[weight]     INTEGER       NOT NULL,
	[is_private] Bit           NOT NULL,
	[timestamp]  DateTime2     NOT NULL,

	CONSTRAINT [PK_exercise] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [exercise]
(
	[id],
	[name],
	[number],
	[startexpl],
	[level],
	[expl],
	[date],
	[image],
	[video],
	[num],
	[side],
	[reeks],
	[time],
	[rest],
	[weight],
	[is_private],
	[timestamp]
)
VALUES
(3438,'ex1',NULL,NULL,0,'desc 1','2021-03-08 12:40:53.892',NULL,NULL,0,0,0,0,0,0,0,'2021-03-08 12:40:53.892'),
(3440,'ex2',NULL,NULL,0,'desc 2','2021-03-08 12:40:53.892',NULL,NULL,0,0,0,0,0,0,0,'2021-03-08 12:40:53.892'),
(3441,'ex3',NULL,NULL,0,'desc 3','2021-03-08 12:40:53.892',NULL,NULL,0,0,0,0,0,0,0,'2021-03-08 12:40:53.892')

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [ext_translations]
(
	[id]           INTEGER       NOT NULL,
	[locale]       NVarChar(255) NOT NULL,
	[object_class] NVarChar(255) NOT NULL,
	[field]        NVarChar(255) NOT NULL,
	[foreign_key]  NVarChar(255) NOT NULL,
	[content]      NVarChar(255)     NULL,

	CONSTRAINT [PK_ext_translations] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [exercise_equipment_linker]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [exercise_equipment_linker]
(
	[exercise_id]  INTEGER NOT NULL,
	[equipment_id] INTEGER NOT NULL,

	CONSTRAINT [PK_exercise_equipment_linker] PRIMARY KEY ([exercise_id], [equipment_id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [exercise_equipment_linker]
(
	[exercise_id],
	[equipment_id]
)
VALUES
(3438,50),
(3438,83),
(3440,59),
(3441,41)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [exercise_equipment]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [exercise_equipment]
(
	[id]                       INTEGER       NOT NULL,
	[parent_id]                INTEGER           NULL,
	[name]                     NVarChar(255) NOT NULL,
	[icon]                     NVarChar(255)     NULL,
	[online]                   Bit           NOT NULL,
	[user_id]                  INTEGER           NULL,
	[original_creator_id]      INTEGER           NULL,
	[is_private]               Bit           NOT NULL,
	[organisation_id]          INTEGER           NULL,
	[original_organisation_id] INTEGER           NULL,

	CONSTRAINT [PK_exercise_equipment] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [exercise_equipment]
(
	[id],
	[parent_id],
	[name],
	[icon],
	[online],
	[user_id],
	[original_creator_id],
	[is_private],
	[organisation_id],
	[original_organisation_id]
)
VALUES
(50,NULL,'AB wheel',NULL,0,NULL,NULL,0,NULL,NULL),
(83,NULL,'Airex balance beam',NULL,0,NULL,NULL,0,NULL,NULL),
(59,NULL,'Matje (geen materiaal)',NULL,0,NULL,NULL,0,NULL,NULL),
(41,NULL,'Bosu',NULL,0,NULL,NULL,0,NULL,NULL)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Locale NVarChar(2) -- String
SET     @Locale = 'en'
DECLARE @ObjectClass NVarChar(1) -- String
SET     @ObjectClass = '1'
DECLARE @Locale_1 NVarChar(2) -- String
SET     @Locale_1 = 'en'
DECLARE @ObjectClass_1 NVarChar(1) -- String
SET     @ObjectClass_1 = '1'
DECLARE @Locale_2 NVarChar(2) -- String
SET     @Locale_2 = 'en'
DECLARE @ObjectClass_2 NVarChar(1) -- String
SET     @ObjectClass_2 = '2'

SELECT
	[key_data_result].[id],
	[key_data_result].[id_1],
	[_equipment].[id],
	[_equipment].[parent_id],
	[_equipment].[name],
	[_equipment].[icon],
	[_equipment].[online],
	[_equipment].[user_id],
	[_equipment].[original_creator_id],
	[_equipment].[is_private],
	[_equipment].[organisation_id],
	[_equipment].[original_organisation_id],
	[t3].[Description],
	[t3].[id]
FROM
	(
		SELECT DISTINCT
			[exercise_1].[id],
			[t2].[id] as [id_1]
		FROM
			[exercise] [exercise_1]
				LEFT JOIN (
					SELECT
						[x].[foreign_key] as [exerciseDescription]
					FROM
						[ext_translations] [x]
					WHERE
						[x].[locale] = @Locale AND [x].[object_class] = @ObjectClass AND
						[x].[field] = 'expl'
				) [t1] ON Cast([exercise_1].[id] as NVarChar(11)) = [t1].[exerciseDescription]
				LEFT JOIN (
					SELECT
						[x_1].[foreign_key] as [exerciseStartDescription],
						[x_1].[id]
					FROM
						[ext_translations] [x_1]
					WHERE
						[x_1].[locale] = @Locale_1 AND [x_1].[object_class] = @ObjectClass_1 AND
						[x_1].[field] = 'startexpl'
				) [t2] ON Cast([exercise_1].[id] as NVarChar(11)) = [t2].[exerciseStartDescription]
	) [key_data_result]
		INNER JOIN [exercise_equipment_linker] [_equipmentLinker] ON [key_data_result].[id] = [_equipmentLinker].[exercise_id]
			INNER JOIN [exercise_equipment] [_equipment] ON [_equipmentLinker].[equipment_id] = [_equipment].[id]
		LEFT JOIN (
			SELECT
				[_x].[foreign_key] as [_description],
				[_x].[content] as [Description],
				[_x].[id]
			FROM
				[ext_translations] [_x]
			WHERE
				[_x].[locale] = @Locale_2 AND [_x].[object_class] = @ObjectClass_2 AND
				[_x].[field] = 'name'
		) [t3] ON Cast([_equipment].[id] as NVarChar(11)) = [t3].[_description]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @language_1 NVarChar(2) -- String
SET     @language_1 = 'en'
DECLARE @Exercise NVarChar(1) -- String
SET     @Exercise = '1'
DECLARE @language_2 NVarChar(2) -- String
SET     @language_2 = 'en'
DECLARE @Exercise_1 NVarChar(1) -- String
SET     @Exercise_1 = '1'

SELECT
	[exercise_1].[id],
	[exercise_1].[is_private],
	[exercise_1].[number],
	[exercise_1].[level],
	[t1].[exerciseDescription_1],
	[t1].[content],
	[exercise_1].[expl],
	[exercise_1].[reeks],
	[exercise_1].[num],
	[exercise_1].[time],
	[exercise_1].[rest],
	[exercise_1].[side],
	[exercise_1].[image],
	[exercise_1].[video],
	[t2].[id],
	[t2].[content],
	[exercise_1].[startexpl]
FROM
	[exercise] [exercise_1]
		LEFT JOIN (
			SELECT
				[x].[foreign_key] as [exerciseDescription],
				[x].[id] as [exerciseDescription_1],
				[x].[content]
			FROM
				[ext_translations] [x]
			WHERE
				[x].[locale] = @language_1 AND [x].[object_class] = @Exercise AND
				[x].[field] = 'expl'
		) [t1] ON Cast([exercise_1].[id] as NVarChar(11)) = [t1].[exerciseDescription]
		LEFT JOIN (
			SELECT
				[x_1].[foreign_key] as [exerciseStartDescription],
				[x_1].[id],
				[x_1].[content]
			FROM
				[ext_translations] [x_1]
			WHERE
				[x_1].[locale] = @language_2 AND [x_1].[object_class] = @Exercise_1 AND
				[x_1].[field] = 'startexpl'
		) [t2] ON Cast([exercise_1].[id] as NVarChar(11)) = [t2].[exerciseStartDescription]
ORDER BY
	[exercise_1].[timestamp] DESC,
	[exercise_1].[id] DESC

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [exercise_equipment]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [exercise_equipment_linker]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [ext_translations]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [exercise]

