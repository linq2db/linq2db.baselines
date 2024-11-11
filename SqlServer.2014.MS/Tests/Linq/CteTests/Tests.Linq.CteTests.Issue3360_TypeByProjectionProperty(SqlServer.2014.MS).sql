BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NULL)
	CREATE TABLE [Issue3360Table]
	(
		[Id]  Int          NOT NULL,
		[Str] VarChar(Max)     NULL,

		CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		CAST('Str1' AS VarChar(Max))
	FROM
		[Issue3360Table] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		CAST('Str2' AS VarChar(Max))
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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue3360Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360Table]

