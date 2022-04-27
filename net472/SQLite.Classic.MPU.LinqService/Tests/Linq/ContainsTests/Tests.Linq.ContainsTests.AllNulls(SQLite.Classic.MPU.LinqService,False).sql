BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]   INTEGER     NOT NULL,
	[Int]  INTEGER         NULL,
	[Enum] NVarChar(5)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int_1  -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Int_1  -- Int32
SET     @Int_1 = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (NULL, NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

