BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [stVersions]
(
	[inId]     INTEGER NOT NULL,
	[inIdMain] INTEGER NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY ([inId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [rlStatesTypesAndUserGroups]
(
	[inIdState] INTEGER NOT NULL,
	[inIdType]  INTEGER NOT NULL,

	CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY ([inIdState], [inIdType])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [stMain]
(
	[inId]     INTEGER NOT NULL,
	[inIdType] INTEGER NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY ([inId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[v].[inId],
	[r].[inIdState]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [r] ON [r].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [stMain]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [stVersions]

