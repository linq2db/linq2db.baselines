BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3360Table]
(
	[Id]  INTEGER NOT NULL,
	[Str] VarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[Id],
	CAST('str1' AS VarChar)
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS VarChar)
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[Id],
	CAST('str2' AS VarChar)
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS VarChar)
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360Table]

