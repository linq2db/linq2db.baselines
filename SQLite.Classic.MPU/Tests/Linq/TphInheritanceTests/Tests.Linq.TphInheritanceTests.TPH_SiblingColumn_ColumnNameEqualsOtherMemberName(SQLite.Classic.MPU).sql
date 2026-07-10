-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'N1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Shared NVarChar(6) -- String
SET     @Shared = 'base-a'
DECLARE @Extra NVarChar(1) -- String
SET     @Extra = 'a'

INSERT INTO [TphNameCollision]
(
	[Kind],
	[Id],
	[shared_phys],
	[ExtraA]
)
VALUES
(
	@Kind,
	@Id,
	@Shared,
	@Extra
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'N2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Shared NVarChar(6) -- String
SET     @Shared = 'base-b'
DECLARE @Extra NVarChar(1) -- String
SET     @Extra = 'b'

INSERT INTO [TphNameCollision]
(
	[Kind],
	[Id],
	[shared_phys],
	[Shared]
)
VALUES
(
	@Kind,
	@Id,
	@Shared,
	@Extra
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Kind],
	[t1].[Id],
	[t1].[shared_phys],
	[t1].[Shared],
	[t1].[ExtraA]
FROM
	[TphNameCollision] [t1]
ORDER BY
	[t1].[Id]

