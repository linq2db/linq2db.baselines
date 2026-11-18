-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2025-06-01 10:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2025-06-01 10:00:00.000'

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
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	CAST(CAST(Round((JulianDay(DATETIME('now', 'localtime')) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 1

