BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3360Table]
(
	[Id]  INTEGER NOT NULL,
	[Str] VarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY ([Id])
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
		[Issue3360Table] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		CAST('Str' AS VarChar)
	FROM
		[cte] [t1],
		[Issue3360Table] [r]
	WHERE
		[t1].[Id] = [r].[Id] + 1
)
SELECT
	[t2].[Id],
	[t2].[Str]
FROM
	[cte] [t2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360Table]

