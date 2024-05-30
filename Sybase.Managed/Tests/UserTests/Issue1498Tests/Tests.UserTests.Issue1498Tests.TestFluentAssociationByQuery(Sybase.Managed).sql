BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Topic') IS NOT NULL)
	DROP TABLE [Topic]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Topic') IS NULL)
	EXECUTE('
		CREATE TABLE [Topic]
		(
			[Id]    Int           NOT NULL,
			[Title] NVarChar(255)     NULL,
			[Text]  NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Message') IS NOT NULL)
	DROP TABLE [Message]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Message') IS NULL)
	EXECUTE('
		CREATE TABLE [Message]
		(
			[Id]      Int           NOT NULL,
			[TopicId] Int           NOT NULL,
			[Text]    NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title UniVarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text UniVarChar(4) -- String
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text UniVarChar(7) -- String
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text UniVarChar(7) -- String
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
		INNER JOIN [Message] [d] ON [d].[TopicId] = [m_1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Message') IS NOT NULL)
	DROP TABLE [Message]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Topic') IS NOT NULL)
	DROP TABLE [Topic]

