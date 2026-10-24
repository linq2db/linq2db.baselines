-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-06-12 10:00:00.000'
DECLARE @OpenedOn  -- Date
SET     @OpenedOn = '2026-06-01 00:00:00.000'
DECLARE @ClosedOn  -- Date
SET     @ClosedOn = '2026-06-12 00:00:00.000'

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
	[r].[OpenedOn],
	[r].[ClosedOn]
FROM
	[CoarseEventRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[CoarseEventRow] [r]
LIMIT 2

