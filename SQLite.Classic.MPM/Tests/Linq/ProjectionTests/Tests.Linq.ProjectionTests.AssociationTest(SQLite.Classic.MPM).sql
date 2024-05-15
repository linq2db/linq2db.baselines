BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeEntity]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeEntity]
(
	[Id]      INTEGER NOT NULL,
	[OtherId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [SomeEntity]
(
	[Id],
	[OtherId]
)
VALUES
(1,3)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeOtherEntity]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[IsActual] Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[Name],
	[IsActual]
)
VALUES
(2,NULL,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[OtherId],
	[a_Other].[IsActual]
FROM
	[SomeEntity] [t]
		LEFT JOIN [SomeOtherEntity] [a_Other] ON [t].[OtherId] = [a_Other].[Id]
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeEntity]

