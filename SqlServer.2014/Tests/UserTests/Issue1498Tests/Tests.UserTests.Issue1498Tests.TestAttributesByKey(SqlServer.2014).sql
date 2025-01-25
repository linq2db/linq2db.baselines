BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Topic]', N'U') IS NOT NULL)
	DROP TABLE [Topic]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Topic]', N'U') IS NULL)
	CREATE TABLE [Topic]
	(
		[Id]    Int            NOT NULL,
		[Title] NVarChar(4000)     NULL,
		[Text]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Message]', N'U') IS NOT NULL)
	DROP TABLE [Message]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Message]', N'U') IS NULL)
	CREATE TABLE [Message]
	(
		[Id]      Int            NOT NULL,
		[TopicId] Int            NOT NULL,
		[Text]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014

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
		INNER JOIN [Message] [d] ON [m_1].[Id] = [d].[TopicId]

BeforeExecute
-- SqlServer.2014

SELECT TOP (1)
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
-- SqlServer.2014

IF (OBJECT_ID(N'[Message]', N'U') IS NOT NULL)
	DROP TABLE [Message]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Topic]', N'U') IS NOT NULL)
	DROP TABLE [Topic]

