BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SomeEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SomeEntity]
(
	[Id]      INTEGER NOT NULL,
	[OtherId] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SomeEntity]
(
	[Id],
	[OtherId]
)
VALUES
(1,3)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SomeOtherEntity]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[IsActual] Bit           NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[Name],
	[IsActual]
)
VALUES
(2,NULL,1)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[t2].[IsActual]
FROM
	[SomeEntity] [t1]
		LEFT JOIN [SomeOtherEntity] [t2] ON [t2].[Id] = [t1].[OtherId]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SomeEntity]

