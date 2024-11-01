BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360WithEnum]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3360WithEnum]
(
	[Id]  INTEGER     NOT NULL,
	[Str] VarChar(50) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360WithEnum]

