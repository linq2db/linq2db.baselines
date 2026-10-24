-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-06-01 15:04:03.000'
DECLARE @OpenedOn  -- Date
SET     @OpenedOn = '2026-06-01 00:00:00.000'
DECLARE @ClosedOn  -- Date
SET     @ClosedOn = '2026-06-01 00:00:00.000'

INSERT INTO [CoarseEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[OpenedOn],
	[ClosedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- SQLite.MS SQLite
SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-06-20 00:00:00.000') + Round(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[CoarseEventRow] [r]
LIMIT 2

