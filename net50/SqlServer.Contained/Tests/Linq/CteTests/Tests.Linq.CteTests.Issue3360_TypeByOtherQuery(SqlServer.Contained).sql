BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Issue3360Table]
(
	[Id]  Int          NOT NULL,
	[Str] VarChar(Max)     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		Cast([p].[Str] as VarChar(Max))
	FROM
		[Issue3360Table] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		Cast('Str' as VarChar(Max))
	FROM
		[cte] [p_1]
			INNER JOIN [Issue3360Table] [r] ON [p_1].[Id] = [r].[Id] + 1
)
SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[cte] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue3360Table]

