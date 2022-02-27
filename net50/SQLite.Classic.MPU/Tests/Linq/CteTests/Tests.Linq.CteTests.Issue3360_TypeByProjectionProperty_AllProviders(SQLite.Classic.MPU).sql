BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Issue3360Table]
(
	[Id]  INTEGER NOT NULL,
	[Str] VarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
		[p_1].[Id],
		'Str2'
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360Table]

