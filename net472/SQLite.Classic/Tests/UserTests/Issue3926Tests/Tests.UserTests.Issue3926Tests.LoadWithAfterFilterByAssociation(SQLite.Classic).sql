BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [t_category_groups]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [t_category_groups]
(
	[Id]              Guid          NOT NULL,
	[TelegramBotName] NVarChar(255)     NULL,
	[GroupIcon]       NVarChar(255)     NULL,

	CONSTRAINT [PK_t_category_groups] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [t_dialog_categories]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [t_dialog_categories]
(
	[Id]              Guid          NOT NULL,
	[CategoryGroupId] Guid          NOT NULL,
	[Category]        NVarChar(255)     NULL,

	CONSTRAINT [PK_t_dialog_categories] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CALL_RECORD]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CALL_RECORD]
(
	[IsNew] Bit  NOT NULL,
	[Id]    Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CALL_TRANSCRIPTION]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CALL_TRANSCRIPTION]
(
	[IsNew] Bit  NOT NULL,
	[Id]    Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [t_call_metas]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [t_call_metas]
(
	[Id]               Guid    NOT NULL,
	[DialogCategoryId] Guid        NULL,
	[ProfileId]        INTEGER NOT NULL,

	CONSTRAINT [PK_t_call_metas] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Category NVarChar(4) -- String
SET     @Category = 'Some'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[Id],
	[x].[DialogCategoryId],
	[x].[ProfileId],
	[a_DialogCategory_1].[Id],
	[a_DialogCategory_1].[CategoryGroupId],
	[a_DialogCategory_1].[Category],
	[a_CategoryGroup_1].[Id],
	[a_CategoryGroup_1].[TelegramBotName],
	[a_CategoryGroup_1].[GroupIcon],
	[a_CallTranscription].[IsNew],
	[a_CallTranscription].[Id],
	[a_CallRecord].[IsNew],
	[a_CallRecord].[Id]
FROM
	[t_call_metas] [x]
		LEFT JOIN [t_dialog_categories] [a_DialogCategory] ON [x].[DialogCategoryId] = [a_DialogCategory].[Id]
		LEFT JOIN [t_category_groups] [a_CategoryGroup] ON [a_DialogCategory].[CategoryGroupId] = [a_CategoryGroup].[Id]
		LEFT JOIN [t_dialog_categories] [a_DialogCategory_1] ON [x].[DialogCategoryId] = [a_DialogCategory_1].[Id]
		LEFT JOIN [t_category_groups] [a_CategoryGroup_1] ON [a_DialogCategory_1].[CategoryGroupId] = [a_CategoryGroup_1].[Id]
		LEFT JOIN [CALL_TRANSCRIPTION] [a_CallTranscription] ON [x].[Id] = [a_CallTranscription].[Id]
		LEFT JOIN [CALL_RECORD] [a_CallRecord] ON [x].[Id] = [a_CallRecord].[Id]
WHERE
	[a_CategoryGroup].[TelegramBotName] = @Category
ORDER BY
	[x].[ProfileId] DESC
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [t_call_metas]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CALL_TRANSCRIPTION]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CALL_RECORD]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [t_dialog_categories]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [t_category_groups]

