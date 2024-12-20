﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [t_category_groups]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [t_category_groups]
(
	[Id]              Guid          NOT NULL,
	[GroupIcon]       NVarChar(255)     NULL,
	[TelegramBotName] NVarChar(255)     NULL,

	CONSTRAINT [PK_t_category_groups] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [t_dialog_categories]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [t_dialog_categories]
(
	[Id]              Guid          NOT NULL,
	[Category]        NVarChar(255)     NULL,
	[CategoryGroupId] Guid          NOT NULL,

	CONSTRAINT [PK_t_dialog_categories] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CALL_RECORD]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CALL_RECORD]
(
	[Id]    Guid NOT NULL,
	[IsNew] Bit  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CALL_TRANSCRIPTION]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CALL_TRANSCRIPTION]
(
	[Id]    Guid NOT NULL,
	[IsNew] Bit  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [t_call_metas]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [t_call_metas]
(
	[Id]               Guid    NOT NULL,
	[ProfileId]        INTEGER NOT NULL,
	[DialogCategoryId] Guid        NULL,

	CONSTRAINT [PK_t_call_metas] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[ProfileId],
	[x].[DialogCategoryId],
	[a_DialogCategory].[Id],
	[a_DialogCategory].[Category],
	[a_DialogCategory].[CategoryGroupId],
	[a_CategoryGroup].[Id],
	[a_CategoryGroup].[GroupIcon],
	[a_CategoryGroup].[TelegramBotName],
	[a_CallTranscription].[Id],
	[a_CallRecord].[Id]
FROM
	[t_call_metas] [x]
		LEFT JOIN [t_dialog_categories] [a_DialogCategory] ON [x].[DialogCategoryId] = [a_DialogCategory].[Id]
		LEFT JOIN [t_category_groups] [a_CategoryGroup] ON [a_DialogCategory].[CategoryGroupId] = [a_CategoryGroup].[Id]
		LEFT JOIN [CALL_TRANSCRIPTION] [a_CallTranscription] ON [x].[Id] = [a_CallTranscription].[Id]
		LEFT JOIN [CALL_RECORD] [a_CallRecord] ON [x].[Id] = [a_CallRecord].[Id]
WHERE
	[a_CategoryGroup].[TelegramBotName] = 'Some'
ORDER BY
	[x].[ProfileId] DESC
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [t_call_metas]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CALL_TRANSCRIPTION]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CALL_RECORD]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [t_dialog_categories]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [t_category_groups]

