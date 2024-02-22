﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue2816Table]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NULL)
	CREATE TABLE [Issue2816Table]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N' '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'   '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'  x '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SqlServer.2019

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NOT NULL AND ((TRIM(N'	
                 　' FROM [p].[Text])) <> N'' OR (TRIM(N'	
                 　' FROM [p].[Text])) IS NULL)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue2816Table]

