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
SELECT
	[r].[StartedOn]
FROM
	[BudgetedTaskRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 + [r].[Budget] * 10000000 AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(CAST([r].[Budget] + [r].[Budget] AS INTEGER) * 10000000 - CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST((CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 + [r].[Budget] * 10000000 AS INTEGER) / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[BudgetedTaskRow] [r]
LIMIT 2

