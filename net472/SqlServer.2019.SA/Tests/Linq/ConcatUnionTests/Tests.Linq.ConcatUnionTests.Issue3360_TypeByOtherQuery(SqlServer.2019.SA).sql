BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [Issue3360Table]
(
	[Id]  Int          NOT NULL,
	[Str] VarChar(Max)     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[Id],
	'str'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [Issue3360Table]

