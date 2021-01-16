BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Topic]
(
	[Id]    Int           NOT NULL,
	[Title] NVarChar(255)     NULL,
	[Text]  NVarChar(255)     NULL,

	CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Message]
(
	[Id]      Int           NOT NULL,
	[TopicId] Int           NOT NULL,
	[Text]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title VarWChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarWChar(4) -- String
SET     @Text = 'text'

INSERT INTO [Topic]
(
	[Id],
	[Title],
	[Text]
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text VarWChar(7) -- String
SET     @Text = 'message'

INSERT INTO [Message]
(
	[Id],
	[TopicId],
	[Text]
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text VarWChar(7) -- String
SET     @Text = 'message'

INSERT INTO [Message]
(
	[Id],
	[TopicId],
	[Text]
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[key_data_result].[Id],
	[key_data_result].[Title],
	[key_data_result].[Text],
	[detail].[Id]
FROM
	(
		SELECT DISTINCT
			[t1].[Id],
			[t1].[Title],
			[t1].[Text]
		FROM
			(
				SELECT TOP 1
					[x].[Id],
					[x].[Title],
					[x].[Text]
				FROM
					[Topic] [x]
				WHERE
					[x].[Id] = 6
			) [t1]
	) [key_data_result]
		INNER JOIN [Message] [detail] ON ([detail].[TopicId] = [key_data_result].[Id])

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Message]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Topic]

