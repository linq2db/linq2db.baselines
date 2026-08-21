-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2045-06-05 04:03:02.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '1970-01-02 00:00:00.000'

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
SET     @StartedOn = '1970-01-02 00:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '1970-01-02 00:02:05.000'

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
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 600000000) % 60 AS INTEGER)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000000) % 60 AS INTEGER)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

