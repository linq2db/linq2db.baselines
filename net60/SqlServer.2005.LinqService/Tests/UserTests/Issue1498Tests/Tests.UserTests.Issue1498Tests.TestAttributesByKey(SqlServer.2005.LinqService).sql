﻿BeforeExecute
-- SqlServer.2005

CREATE TABLE [Topic]
(
	[Id]    Int            NOT NULL,
	[Title] NVarChar(4000)     NULL,
	[Text]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Message]
(
	[Id]      Int            NOT NULL,
	[TopicId] Int            NOT NULL,
	[Text]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

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
				SELECT TOP (@take)
					[x].[Id],
					[x].[Title],
					[x].[Text]
				FROM
					[Topic] [x]
				WHERE
					[x].[Id] = 6
			) [t1]
	) [key_data_result]
		INNER JOIN [Message] [detail] ON [key_data_result].[Id] = [detail].[TopicId]

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Message]', N'U') IS NOT NULL)
	DROP TABLE [Message]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Topic]', N'U') IS NOT NULL)
	DROP TABLE [Topic]

