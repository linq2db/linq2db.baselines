BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Attachment]
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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Attachment]

