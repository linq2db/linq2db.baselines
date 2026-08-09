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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks  -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 1800

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
	(
		SELECT
			MIN([t2].[InSeconds])
		FROM
			[DurationRow] [t2]
	),
	(
		SELECT
			MAX([t3].[InSeconds])
		FROM
			[DurationRow] [t3]
	),
	Coalesce((
		SELECT
			SUM(CAST([t4].[InSeconds] AS Float) / 60)
		FROM
			[DurationRow] [t4]
	), 0)
FROM
	[DurationRow] [t1]
LIMIT 1

