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

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
SELECT 1,N' ' UNION ALL
SELECT 2,N'   ' UNION ALL
SELECT 3,N'  x '

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

