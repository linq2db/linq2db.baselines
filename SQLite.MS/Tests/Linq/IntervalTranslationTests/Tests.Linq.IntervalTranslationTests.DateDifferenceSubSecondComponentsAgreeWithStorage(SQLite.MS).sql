-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:20:30.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 10:20:30.123'

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
	[r].[FinishedOn]
FROM
	[EventRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000) % 1000 AS INTEGER),
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000000) % 60 AS INTEGER)
FROM
	[EventRow] [r]
LIMIT 2

