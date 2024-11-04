BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Topic]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Topic]
(
	[Id]    Int           NOT NULL,
	[Title] NVarChar(255)     NULL,
	[Text]  NVarChar(255)     NULL,

	CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Message]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Message]
(
	[Id]      Int           NOT NULL,
	[TopicId] Int           NOT NULL,
	[Text]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Title NVarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'text'

INSERT INTO [Topic]
(
	[Id],
	[Title],
	[Text]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 60
DECLARE @TopicId  -- Int32
SET     @TopicId = 6
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'message'

INSERT INTO [Message]
(
	[Id],
	[TopicId],
	[Text]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 61
DECLARE @TopicId  -- Int32
SET     @TopicId = 7
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'message'

INSERT INTO [Message]
(
	[Id],
	[TopicId],
	[Text]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Message]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Topic]

