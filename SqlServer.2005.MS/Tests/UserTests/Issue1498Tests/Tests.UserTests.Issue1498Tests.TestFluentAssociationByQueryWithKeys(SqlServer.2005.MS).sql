﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005
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
--  SqlServer.2005.MS SqlServer.2005
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
--  SqlServer.2005.MS SqlServer.2005
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
BeginTransaction(RepeatableRead)
BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

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
--  SqlServer.2005.MS SqlServer.2005

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
