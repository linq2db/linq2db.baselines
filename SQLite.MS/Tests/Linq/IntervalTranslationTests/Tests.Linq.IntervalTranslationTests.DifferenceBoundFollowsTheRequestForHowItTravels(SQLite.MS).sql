-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 11:00:00.000'
DECLARE @Budget  -- Int64
SET     @Budget = 10800

INSERT INTO [BudgetedTaskRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Budget]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 12:00:00.000'
DECLARE @Budget  -- Int64
SET     @Budget = 10800

INSERT INTO [BudgetedTaskRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Budget]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 13:00:00.000'
DECLARE @Budget  -- Int64
SET     @Budget = 10800

INSERT INTO [BudgetedTaskRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Budget]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- SQLite.MS SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 72000000000

SELECT
	[r].[Id]
FROM
	[BudgetedTaskRow] [r]
WHERE
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 > @Ticks
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[BudgetedTaskRow] [r]
WHERE
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 > 72000000000
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[BudgetedTaskRow] [r]
WHERE
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 > 0
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 0

SELECT
	[r].[Id]
FROM
	[BudgetedTaskRow] [r]
WHERE
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 > @Ticks
ORDER BY
	[r].[Id]

