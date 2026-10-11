-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks  -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 5400

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
	[r].[InSeconds] + [r].[InSeconds],
	[r].[InTicks] + [r].[InTicks],
	CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER),
	CAST([r].[InSeconds] * 10000000 - [r].[InTicks] AS INTEGER),
	CAST([r].[InTicks] - [r].[InSeconds] * 10000000 AS INTEGER),
	CAST(CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER) + [r].[InSeconds] * 10000000 AS INTEGER),
	CAST(CAST(-[r].[InSeconds] AS INTEGER) * 10000000 + [r].[InTicks] AS INTEGER),
	CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER),
	CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER) + [r].[InTicks] + [r].[InTicks],
	CAST(CAST([r].[InSeconds] + [r].[InSeconds] AS INTEGER) * 10000000 + [r].[InTicks] AS INTEGER) - ([r].[InTicks] + [r].[InTicks]),
	CAST(CAST(-[r].[InSeconds] AS INTEGER) * 10000000 - [r].[InTicks] AS INTEGER)
FROM
	[DurationRow] [r]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER)
FROM
	[DurationRow] [r]
LIMIT 2

