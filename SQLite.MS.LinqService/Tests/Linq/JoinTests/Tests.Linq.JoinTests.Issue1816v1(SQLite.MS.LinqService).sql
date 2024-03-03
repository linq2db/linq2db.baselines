BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [stVersions]
(
	[inId]     INTEGER NOT NULL,
	[inIdMain] INTEGER NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY ([inId])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [rlStatesTypesAndUserGroups]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [rlStatesTypesAndUserGroups]
(
	[inIdState] INTEGER NOT NULL,
	[inIdType]  INTEGER NOT NULL,

	CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY ([inIdState], [inIdType])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [stMain]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [stMain]
(
	[inId]     INTEGER NOT NULL,
	[inIdType] INTEGER NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY ([inId])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[v].[inId],
	[t].[inIdState]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [stMain]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [rlStatesTypesAndUserGroups]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [stVersions]

