-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-05 00:00:00.000'

INSERT INTO [EventRow]
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-03 00:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-03 20:00:00.000'

INSERT INTO [EventRow]
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

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 24

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 24

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 600000000

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000,
	CAST(((CAST(Round((JulianDay(@asOf) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER)
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

