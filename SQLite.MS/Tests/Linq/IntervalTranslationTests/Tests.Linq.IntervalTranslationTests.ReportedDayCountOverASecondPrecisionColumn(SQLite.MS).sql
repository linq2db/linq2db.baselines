-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-06-01 10:00:00.000'
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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-05-25 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-05-25 10:00:00.000'
DECLARE @OpenedOn  -- Date
SET     @OpenedOn = '2026-05-25 00:00:00.000'
DECLARE @ClosedOn  -- Date
SET     @ClosedOn = '2026-05-25 00:00:00.000'

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
	CAST(CAST(CAST(Round((JulianDay(MAX([grp].[StartedOn])) - JulianDay(MIN([grp].[StartedOn]))) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 AS INTEGER) + 1
FROM
	[CoarseEventRow] [grp]
LIMIT 2

