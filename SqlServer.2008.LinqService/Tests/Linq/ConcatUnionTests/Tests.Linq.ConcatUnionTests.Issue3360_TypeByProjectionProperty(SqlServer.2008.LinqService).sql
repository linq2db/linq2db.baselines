BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NULL)
	CREATE TABLE [Issue3360Table]
	(
		[Id]  Int          NOT NULL,
		[Str] VarChar(Max)     NULL,

		CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008

SELECT
	[p].[Id],
	CAST('str1' AS VarChar(Max))
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS VarChar(Max))
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2008

SELECT
	[p].[Id],
	CAST('str2' AS VarChar(Max))
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS VarChar(Max))
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table]

