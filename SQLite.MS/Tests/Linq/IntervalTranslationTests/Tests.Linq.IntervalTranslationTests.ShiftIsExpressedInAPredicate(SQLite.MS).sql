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
SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08) > strftime('%Y-%m-%d %H:%M:%f', '2026-03-01 04:00:00.000')

