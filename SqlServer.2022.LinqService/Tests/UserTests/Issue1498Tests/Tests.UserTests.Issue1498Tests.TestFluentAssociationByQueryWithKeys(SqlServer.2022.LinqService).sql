BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Topic]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Topic]', N'U') IS NULL)
	CREATE TABLE [Topic]
	(
		[Id]    Int            NOT NULL,
		[Title] NVarChar(4000)     NULL,
		[Text]  NVarChar(4000)     NULL,

		CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Message]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Message]', N'U') IS NULL)
	CREATE TABLE [Message]
	(
		[Id]      Int            NOT NULL,
		[TopicId] Int            NOT NULL,
		[Text]    NVarChar(4000)     NULL,

		CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Title NVarChar(4000) -- String
SET     @Title = N'title'
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'text'

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
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 60
DECLARE @TopicId Int -- Int32
SET     @TopicId = 6
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'message'

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
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 61
DECLARE @TopicId Int -- Int32
SET     @TopicId = 7
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'message'

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
-- SqlServer.2022

SELECT
	[m_1].[Id],
	[d].[Id]
FROM
	(
		SELECT TOP (1)
			[x].[Id]
		FROM
			[Topic] [x]
		WHERE
			[x].[Id] = 6
	) [m_1]
		INNER JOIN [Message] [d] ON [d].[TopicId] = [m_1].[Id]

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Message]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Topic]

