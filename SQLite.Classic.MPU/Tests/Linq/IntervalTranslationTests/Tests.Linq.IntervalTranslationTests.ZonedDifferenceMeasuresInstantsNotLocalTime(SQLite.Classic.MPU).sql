-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(25) -- AnsiString
SET     @StartedOn = '2026-01-01 12:00:00+00:00'
DECLARE @FinishedOn VarChar(25) -- AnsiString
SET     @FinishedOn = '2026-01-01 14:00:00+02:00'

INSERT INTO [ZonedEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn VarChar(25) -- AnsiString
SET     @StartedOn = '2026-01-01 12:00:00+02:00'
DECLARE @FinishedOn VarChar(25) -- AnsiString
SET     @FinishedOn = '2026-01-01 12:00:00+00:00'

INSERT INTO [ZonedEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

