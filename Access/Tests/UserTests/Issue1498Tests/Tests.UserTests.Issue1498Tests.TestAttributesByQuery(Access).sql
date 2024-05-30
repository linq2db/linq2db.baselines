BeforeExecute
-- Access AccessOleDb

DROP TABLE [Topic]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Topic]
(
	[Id]    Int           NOT NULL,
	[Title] NVarChar(255)     NULL,
	[Text]  NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Message]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Message]
(
	[Id]      Int           NOT NULL,
	[TopicId] Int           NOT NULL,
	[Text]    NVarChar(255)     NULL
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
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id]
FROM
	(
		SELECT TOP 1
			[x].[Id]
		FROM
			[Topic] [x]
		WHERE
			[x].[Id] = 6
	) [m_1]
		INNER JOIN [Message] [d] ON ([d].[TopicId] = [m_1].[Id])

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
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

DROP TABLE [Message]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Topic]

