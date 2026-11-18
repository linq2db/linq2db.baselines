-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-01-01 10:00:00.006'

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
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [r]

-- SQLite.MS SQLite
SELECT
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [r]
WHERE
	[r].[Id] > 0
UNION ALL
SELECT
	CAST(Round((JulianDay([r_1].[FinishedOn]) - JulianDay([r_1].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [r_1]
WHERE
	[r_1].[Id] <= 0

