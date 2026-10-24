-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[StartedOn]
FROM
	[BudgetedTaskRow] [r]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 + [r].[Budget] * 10000000 AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08),
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(CAST([r].[Budget] + [r].[Budget] AS INTEGER) * 10000000 - CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08),
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 + [r].[Budget] * 10000000 AS INTEGER) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[BudgetedTaskRow] [r]
LIMIT 2

