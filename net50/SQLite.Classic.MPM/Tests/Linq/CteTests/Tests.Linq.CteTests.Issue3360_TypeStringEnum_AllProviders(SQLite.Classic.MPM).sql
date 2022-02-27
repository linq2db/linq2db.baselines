BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Issue3360WithEnum]
(
	[Id]  INTEGER     NOT NULL,
	[Str] VarChar(50) NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
		[p_1].[Id],
		'THIS_IS_TWO'
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360WithEnum]

