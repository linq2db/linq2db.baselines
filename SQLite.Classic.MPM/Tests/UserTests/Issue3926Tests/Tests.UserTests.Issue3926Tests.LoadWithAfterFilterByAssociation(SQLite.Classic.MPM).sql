BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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

