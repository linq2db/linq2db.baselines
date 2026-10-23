-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks  -- Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 3000000005

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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([r].[InSeconds] / 86400 AS INTEGER),
	CAST(([r].[InSeconds] / 3600) % 24 AS INTEGER),
	CAST(([r].[InSeconds] / 60) % 60 AS INTEGER),
	CAST([r].[InSeconds] % 60 AS INTEGER)
FROM
	[DurationRow] [r]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Seconds  -- Int32
SET     @Seconds = 5

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	CAST([r].[InSeconds] % 60 AS INTEGER) = @Seconds

