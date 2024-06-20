BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3360NullInAnchor]
(
	[Id]    INTEGER     NOT NULL,
	[Guid]  Guid            NULL,
	[Enum1] VarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
		[t1].[Id],
		'THIS_IS_ONE'
	FROM
		[cte] [t1]
			INNER JOIN [Issue3360NullInAnchor] [r] ON [t1].[Id] = [r].[Id] + 100
)
SELECT
	[t2].[Id],
	[t2].[Enum1]
FROM
	[cte] [t2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

