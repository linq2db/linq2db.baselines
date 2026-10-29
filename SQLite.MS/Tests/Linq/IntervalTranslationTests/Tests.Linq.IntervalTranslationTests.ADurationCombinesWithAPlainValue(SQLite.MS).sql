-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-01-01 11:00:00.000'
DECLARE @Budget Integer -- Int64
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
DECLARE @extra Integer -- Int64
SET     @extra = 300
DECLARE @Ticks Integer -- Int64
SET     @Ticks = 3000000000

SELECT
	[r].[Budget] + @extra,
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 + @Ticks AS INTEGER),
	CAST(@Ticks + CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS INTEGER),
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 - @Ticks AS INTEGER)
FROM
	[BudgetedTaskRow] [r]
LIMIT 2

