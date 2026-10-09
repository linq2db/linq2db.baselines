-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 15:30:00.250'
DECLARE @Due  -- DateTime
SET     @Due = '2026-01-01 10:00:00.000'

INSERT INTO [ShiftTargetRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Due]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Due
)

-- SQLite.MS SQLite
UPDATE
	[ShiftTargetRow]
SET
	[Due] = Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST(CAST(Round((JulianDay([ShiftTargetRow].[FinishedOn]) - JulianDay([ShiftTargetRow].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08)
WHERE
	[ShiftTargetRow].[Id] = 1

-- SQLite.MS SQLite
SELECT
	[r].[Due]
FROM
	[ShiftTargetRow] [r]
LIMIT 2

