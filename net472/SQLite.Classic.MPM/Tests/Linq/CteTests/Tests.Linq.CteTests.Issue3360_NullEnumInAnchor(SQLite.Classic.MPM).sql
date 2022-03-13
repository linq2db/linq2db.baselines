BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Issue3360NullInAnchor]
(
	[Id]    INTEGER     NOT NULL,
	[Guid]  Guid            NULL,
	[Enum1] VarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [cte] ([Id], [Enum1])
AS
(
	SELECT
		[p].[Id],
		NULL
	FROM
		[Issue3360NullInAnchor] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		'THIS_IS_ONE'
	FROM
		[cte] [p_1]
			INNER JOIN [Issue3360NullInAnchor] [r] ON [p_1].[Id] = [r].[Id] + 100
)
SELECT
	[t1].[Id],
	[t1].[Enum1]
FROM
	[cte] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

