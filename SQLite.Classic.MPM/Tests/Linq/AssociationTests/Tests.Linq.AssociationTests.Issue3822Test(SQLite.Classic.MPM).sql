BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Dog]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Dog]
(
	[Id]      INTEGER NOT NULL,
	[OwnerId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Dog]
(
	[Id],
	[OwnerId]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Human]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Human]
(
	[Id]      INTEGER NOT NULL,
	[HouseId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Human]
(
	[Id],
	[HouseId]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [House]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [House]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [House]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Window]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Window]
(
	[Id]       INTEGER NOT NULL,
	[Position] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Window]
(
	[Id],
	[Position]
)
VALUES
(6,6)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Dog] [x]
		INNER JOIN [Human] [a_Owner] ON [x].[OwnerId] = [a_Owner].[Id]
		INNER JOIN [House] [a_House] ON [a_Owner].[HouseId] = [a_House].[Id]
		LEFT JOIN (
			SELECT
				[a_WindowAtPosition].[Id]
			FROM
				[Window] [a_WindowAtPosition]
			WHERE
				[a_WindowAtPosition].[Position] = 6
			LIMIT 1
		) [t1] ON 1=1
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Window]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [House]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Human]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Dog]

