BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue2816Table]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NULL)
	CREATE TABLE [Issue2816Table]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N' '

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
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'   '

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
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'  x '

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
-- SqlServer.2005

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR [p].[Text] NOT LIKE N'%[^	
                 　]%')

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue2816Table]

