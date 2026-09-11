-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 13, 0, 0, 0, 7)
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

-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 11, 0, 0, 0, 7)
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

-- SqlServer.2022
SELECT TOP (1)
	(
		SELECT
			MIN((DateDiff_Big(day, [t2].[StartedOn], [t2].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t2].[StartedOn], [t2].[FinishedOn]) AS Int), [t2].[StartedOn]), [t2].[FinishedOn]) / 100)
		FROM
			[BudgetedTaskRow] [t2]
	),
	(
		SELECT
			MAX((DateDiff_Big(day, [t3].[StartedOn], [t3].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t3].[StartedOn], [t3].[FinishedOn]) AS Int), [t3].[StartedOn]), [t3].[FinishedOn]) / 100)
		FROM
			[BudgetedTaskRow] [t3]
	),
	Coalesce((
		SELECT
			SUM(CAST((DateDiff_Big(day, [t4].[StartedOn], [t4].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t4].[StartedOn], [t4].[FinishedOn]) AS Int), [t4].[StartedOn]), [t4].[FinishedOn]) / 100 AS Float) / 600000000)
		FROM
			[BudgetedTaskRow] [t4]
	), 0)
FROM
	[BudgetedTaskRow] [t1]

