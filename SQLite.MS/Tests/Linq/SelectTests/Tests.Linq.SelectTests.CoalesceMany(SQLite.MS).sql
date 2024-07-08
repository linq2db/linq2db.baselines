BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CoalesceNullableFields]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CoalesceNullableFields]
(
	[Id]        INTEGER NOT NULL,
	[Nullable1] INTEGER     NULL,
	[Nullable2] INTEGER     NULL,
	[Nullable3] INTEGER     NULL,

	CONSTRAINT [PK_CoalesceNullableFields] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(1,10,NULL,NULL),
(2,NULL,20,NULL),
(3,NULL,NULL,30),
(4,NULL,NULL,NULL)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Coalesce([t].[Nullable1], [t].[Nullable2], [t].[Nullable3], [t].[Id]),
	Coalesce([t].[Nullable2], [t].[Nullable1], [t].[Nullable3], [t].[Id]),
	Coalesce([t].[Nullable2], [t].[Nullable3], [t].[Nullable1], [t].[Id]),
	Coalesce([t].[Nullable3], [t].[Nullable1], [t].[Nullable2], [t].[Id]),
	Coalesce([t].[Nullable3], [t].[Nullable2], [t].[Nullable1], [t].[Id])
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CoalesceNullableFields]

