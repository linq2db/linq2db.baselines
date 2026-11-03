-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 50
DECLARE @InTicks  -- Int64
SET     @InTicks = 500000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 500000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 50

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
SET     @InSeconds = 150
DECLARE @InTicks  -- Int64
SET     @InTicks = 1500000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 1500000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 150

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
SET     @Id = 3
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 200
DECLARE @InTicks  -- Int64
SET     @InTicks = 2000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 2000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 200

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
SET     @Id = 4
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 30
DECLARE @InTicks  -- Int64
SET     @InTicks = 300000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 300000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 30

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
DECLARE @RowNumber  -- Int64
SET     @RowNumber = 100

SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Key_1] > @RowNumber ORDER BY [e].[RowNumber] DESC, [e].[Key_1]) as [RowNumber],
			[e].[RowNumber] as [RowNumber_1],
			[e].[Key_1],
			[e].[Count_1],
			[e].[c1]
		FROM
			(
				SELECT
					[g_1].[InSeconds] as [Key_1],
					CAST([g_1].[InSeconds] AS Float) as [RowNumber],
					COUNT(*) as [Count_1],
					CAST([g_1].[InSeconds] AS Float) as [c1]
				FROM
					[DurationRow] [g_1]
				GROUP BY
					[g_1].[InSeconds]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1] DESC,
	[t1].[Key_1],
	[t1].[c1] DESC

