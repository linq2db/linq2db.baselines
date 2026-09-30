-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
	(
		SELECT
			MIN((CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) AS Int), [t2].[StartedOn]), [t2].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) AS Int), [t2].[StartedOn]), [t2].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) AS Int), [t2].[StartedOn])), [t2].[FinishedOn]) AS BigInt) / 100)
		FROM
			[BudgetedTaskRow] [t2]
	),
	(
		SELECT
			MAX((CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) AS Int), [t3].[StartedOn]), [t3].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) AS Int), [t3].[StartedOn]), [t3].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) AS Int), [t3].[StartedOn])), [t3].[FinishedOn]) AS BigInt) / 100)
		FROM
			[BudgetedTaskRow] [t3]
	),
	Coalesce((
		SELECT
			SUM(CAST((CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) AS Int), [t4].[StartedOn]), [t4].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) AS Int), [t4].[StartedOn]), [t4].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) AS Int), [t4].[StartedOn])), [t4].[FinishedOn]) AS BigInt) / 100 AS Float) / 600000000)
		FROM
			[BudgetedTaskRow] [t4]
	), 0)
FROM
	[BudgetedTaskRow] [t1]

