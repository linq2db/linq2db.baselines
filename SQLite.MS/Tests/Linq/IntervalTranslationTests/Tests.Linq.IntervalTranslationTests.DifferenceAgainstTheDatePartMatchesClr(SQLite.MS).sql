-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-06-01 15:00:00.000'

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
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay(Date([r].[FinishedOn]))) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[EventRow] [r]
LIMIT 2

