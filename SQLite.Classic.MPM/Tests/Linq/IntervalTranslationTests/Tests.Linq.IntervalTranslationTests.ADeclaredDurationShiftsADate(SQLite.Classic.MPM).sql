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
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST([r].[InSeconds] * 10000000 AS Float) * 0.0001) * 1.1574074074074074E-08),
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST(([r].[InSeconds] * 10000000) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08),
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST([r].[InTicks] AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[DurationRow] [r]
LIMIT 2

