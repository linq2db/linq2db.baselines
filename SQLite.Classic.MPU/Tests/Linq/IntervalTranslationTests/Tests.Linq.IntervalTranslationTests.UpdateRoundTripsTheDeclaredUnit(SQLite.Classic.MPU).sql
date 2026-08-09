-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks  -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 4567

INSERT INTO [DurationRow]
(
	[Id],
	[InSeconds],
	[InTicks],
	[Undeclared],
	[UndeclaredSeconds]
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks  -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[DurationRow]
SET
	[InSeconds] = @InSeconds,
	[InTicks] = @InTicks,
	[Undeclared] = @Undeclared,
	[UndeclaredSeconds] = @UndeclaredSeconds
WHERE
	[DurationRow].[Id] = @Id

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks  -- Int64
SET     @InTicks = 45670000000

UPDATE
	[DurationRow]
SET
	[InSeconds] = @InSeconds,
	[InTicks] = @InTicks
WHERE
	[DurationRow].[Id] = 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]
LIMIT 2

