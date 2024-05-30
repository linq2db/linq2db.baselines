BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeEntity]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeEntity]
(
	[Id]      INTEGER NOT NULL,
	[OtherId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @OtherId  -- Int32
SET     @OtherId = 3

INSERT INTO [SomeEntity]
(
	[Id],
	[OtherId]
)
VALUES
(
	@Id,
	@OtherId
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeOtherEntity]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[IsActual] Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @IsActual  -- Boolean
SET     @IsActual = 1

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[Name],
	[IsActual]
)
VALUES
(
	@Id,
	@Name,
	@IsActual
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[t2].[IsActual]
FROM
	[SomeEntity] [t1]
		LEFT JOIN [SomeOtherEntity] [t2] ON [t2].[Id] = [t1].[OtherId]
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeEntity]

