﻿BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue2816Table]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NULL)
	CREATE TABLE [Issue2816Table]
	(
		[Id]   Int            NOT NULL,
		[Text] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue2816Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(1,N' '),
(2,N'   '),
(3,N'  x ')

BeforeExecute
-- SqlServer.2017

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR (TRIM(N'	
                 　' FROM [p].[Text])) = N'')

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue2816Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue2816Table]

