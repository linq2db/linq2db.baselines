-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 13:00:00.000'
DECLARE @Budget BigInt -- Int64
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 11:00:00.000'
DECLARE @Budget BigInt -- Int64
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

-- Sybase.Managed Sybase
SELECT TOP 1
	(
		SELECT
			MIN((CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt), [t2].[StartedOn]), [t2].[FinishedOn]) AS BigInt) * 10000)
		FROM
			[BudgetedTaskRow] [t2]
	),
	(
		SELECT
			MAX((CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt), [t3].[StartedOn]), [t3].[FinishedOn]) AS BigInt) * 10000)
		FROM
			[BudgetedTaskRow] [t3]
	),
	Coalesce((
		SELECT
			SUM(CAST((CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt), [t4].[StartedOn]), [t4].[FinishedOn]) AS BigInt) * 10000 AS Float) / 600000000)
		FROM
			[BudgetedTaskRow] [t4]
	), 0)
FROM
	[BudgetedTaskRow] [t1]

