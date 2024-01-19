BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Attachment]
(
	[Id]            BigInt        NOT NULL,
	[QuestionSetId] BigInt        NOT NULL,
	[Content]       VarBinary         NULL,
	[Question]      NVarChar(255)     NULL,
	[FileName]      NVarChar(255)     NULL,
	[FileSize]      BigInt        NOT NULL,
	[ContentType]   NVarChar(255)     NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Attachment]
(
	[Id],
	[QuestionSetId],
	[Content],
	[Question],
	[FileName],
	[FileSize],
	[ContentType]
)
VALUES
(1,11,X'010203','SomeQuestion','SomeFile',128,'Some')

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

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Attachment]

