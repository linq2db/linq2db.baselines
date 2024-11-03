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

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS VarChar)
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[Id],
	CAST('str' AS VarChar)
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360Table]

