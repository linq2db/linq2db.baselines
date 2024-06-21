﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue3360Table]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NULL)
	CREATE TABLE [Issue3360Table]
	(
		[Id]  Int          NOT NULL,
		[Str] VarChar(Max)     NULL,

		CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		N'Str1'
	FROM
		[Issue3360Table] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		N'Str2'
	FROM
		[cte] [t1]
			INNER JOIN [Issue3360Table] [r] ON [t1].[Id] = [r].[Id] + 1
)
SELECT
	[t2].[Id],
	[t2].[Str]
FROM
	[cte] [t2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue3360Table]

