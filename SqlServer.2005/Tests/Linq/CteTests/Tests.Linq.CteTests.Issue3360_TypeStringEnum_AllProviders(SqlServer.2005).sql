BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3360WithEnum]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360WithEnum]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3360WithEnum]', N'U') IS NULL)
	CREATE TABLE [Issue3360WithEnum]
	(
		[Id]  Int         NOT NULL,
		[Str] VarChar(50) NOT NULL
	)

BeforeExecute
-- SqlServer.2005

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		[p].[Str]
	FROM
		[Issue3360WithEnum] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		CAST('THIS_IS_TWO' AS VarChar(50))
	FROM
		[cte] [t1]
			INNER JOIN [Issue3360WithEnum] [r] ON [t1].[Id] = [r].[Id] + 1
)
SELECT
	[t2].[Id],
	[t2].[Str]
FROM
	[cte] [t2]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue3360WithEnum]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360WithEnum]

