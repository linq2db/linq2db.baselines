BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[QuestionSetId],
	[x].[Question],
	[x].[FileName],
	[x].[FileSize],
	[x].[ContentType]
FROM
	[Attachment] [x]
WHERE
	[x].[Id] = 1
LIMIT 1

