﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue3360Table]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NULL)
	CREATE TABLE [Issue3360Table]
	(
		[Id]  Int          NOT NULL,
		[Str] VarChar(Max)     NULL,

		CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019

SELECT
	[p].[Id],
	N'str1'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	N'str2'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2019

SELECT
	[p].[Id],
	N'str2'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	N'str1'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue3360Table]

