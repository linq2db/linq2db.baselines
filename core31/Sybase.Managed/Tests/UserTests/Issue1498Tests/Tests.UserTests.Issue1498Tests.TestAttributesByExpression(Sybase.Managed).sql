﻿BeforeExecute
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
		INNER JOIN [Message] [detail] ON [key_data_result].[Id] = [detail].[TopicId]

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
RollbackTransaction
BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Message') IS NOT NULL)
	DROP TABLE [Message]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Topic') IS NOT NULL)
	DROP TABLE [Topic]

