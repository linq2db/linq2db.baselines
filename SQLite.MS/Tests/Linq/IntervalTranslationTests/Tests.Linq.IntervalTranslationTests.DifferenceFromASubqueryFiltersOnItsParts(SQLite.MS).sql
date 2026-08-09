-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 15:00:00.000'

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
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 11:00:00.000'

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
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST(CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 3

-- SQLite.MS SQLite
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST(((CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER) = 1

-- SQLite.MS SQLite
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 DESC

-- SQLite.MS SQLite
SELECT
	CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

