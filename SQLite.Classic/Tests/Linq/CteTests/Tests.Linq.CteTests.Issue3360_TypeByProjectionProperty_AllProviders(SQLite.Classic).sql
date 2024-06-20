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

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		'Str1'
	FROM
		[Issue3360Table] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		'Str2'
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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360Table]

