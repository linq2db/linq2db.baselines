BeforeExecute
-- SqlServer.2008

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
	'str1'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str2'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2008

SELECT
	[p].[Id],
	'str2'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str1'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table]

