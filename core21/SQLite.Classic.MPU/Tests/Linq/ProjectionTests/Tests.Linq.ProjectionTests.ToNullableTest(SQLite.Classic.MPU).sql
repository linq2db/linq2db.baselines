BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeEntity]
(
	[Id]      INTEGER NOT NULL,
	[OtherId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [SomeEntity]
(
	[Id],
	[OtherId]
)
VALUES
(1,3)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeOtherEntity]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[IsActual] Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[Name],
	[IsActual]
)
VALUES
(2,NULL,1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[OtherId],
	[t2].[IsActual]
FROM
	[SomeEntity] [t]
		LEFT JOIN [SomeOtherEntity] [t2] ON [t2].[Id] = [t].[OtherId]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeEntity]

