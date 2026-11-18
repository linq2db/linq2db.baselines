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
WITH [CTE_1] ([Id], [Taken], [Budget])
AS
(
	SELECT
		[r].[Id],
		CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000,
		[r].[Budget]
	FROM
		[BudgetedTaskRow] [r]
)
SELECT
	[t1].[Id],
	[t1].[Taken],
	[t1].[Budget]
FROM
	[CTE_1] [t1]
ORDER BY
	[t1].[Id]
LIMIT 2

