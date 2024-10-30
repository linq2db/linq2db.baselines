BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue2816Table]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NULL)
	CREATE TABLE [Issue2816Table]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(0,N''),
(1,N'a'),
(2,N' m '),
(3,N' '),
(4,N'  '),
(5,NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR (TRIM(N'	
                 　' FROM [p].[Text])) = N''

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue2816Table]

