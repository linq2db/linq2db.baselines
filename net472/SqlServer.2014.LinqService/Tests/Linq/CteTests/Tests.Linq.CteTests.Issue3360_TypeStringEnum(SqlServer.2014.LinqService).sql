BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [Issue3360WithEnum]
(
	[Id]  Int         NOT NULL,
	[Str] VarChar(50) NOT NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		Cast([p].[Str] as VarChar(Max))
	FROM
		[Issue3360WithEnum] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		Cast('THIS_IS_TWO' as VarChar(Max))
	FROM
		[cte] [p_1]
			INNER JOIN [Issue3360WithEnum] [r] ON [p_1].[Id] = [r].[Id] + 1
)
SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[cte] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Issue3360WithEnum]', N'U') IS NOT NULL)
	DROP TABLE [Issue3360WithEnum]

