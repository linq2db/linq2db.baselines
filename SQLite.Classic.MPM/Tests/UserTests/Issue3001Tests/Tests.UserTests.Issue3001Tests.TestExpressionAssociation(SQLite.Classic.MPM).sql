BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [House3001]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [House3001]
(
	[Levels] INTEGER NOT NULL,
	[Id]     INTEGER NOT NULL,

	CONSTRAINT [PK_House3001] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [House3001]
(
	[Levels],
	[Id]
)
VALUES
(2,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Person3001]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Person3001]
(
	[HouseId] INTEGER NOT NULL,
	[Id]      INTEGER NOT NULL,

	CONSTRAINT [PK_Person3001] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Person3001]
(
	[HouseId],
	[Id]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Pet3001]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Pet3001]
(
	[IsHouseMultiLevel] Bit     NOT NULL,
	[Id]                INTEGER NOT NULL,
	[PersonId]          INTEGER NOT NULL,

	CONSTRAINT [PK_Pet3001] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Pet3001]
(
	[IsHouseMultiLevel],
	[Id],
	[PersonId]
)
VALUES
(0,1,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	CASE
		WHEN [a_House].[Levels] > 1 AND [a_House].[Levels] IS NOT NULL
			THEN 1
		ELSE 0
	END
FROM
	[Pet3001] [x]
		INNER JOIN [Person3001] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [House3001] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Pet3001]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Person3001]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [House3001]

