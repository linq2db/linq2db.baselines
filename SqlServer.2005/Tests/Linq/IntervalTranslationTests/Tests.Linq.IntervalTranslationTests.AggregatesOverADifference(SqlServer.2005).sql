-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-01T13:00:00.000' AS DATETIME)
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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-01T11:00:00.000' AS DATETIME)
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

-- SqlServer.2005
SELECT TOP (1)
	(
		SELECT
			MIN((CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [t2].[StartedOn], [t2].[FinishedOn]) AS BigInt) AS Int), [t2].[StartedOn]), [t2].[FinishedOn]) AS BigInt) * 10000)
		FROM
			[BudgetedTaskRow] [t2]
	),
	(
		SELECT
			MAX((CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) AS Int), [t3].[StartedOn]), [t3].[FinishedOn]) AS BigInt) * 10000)
		FROM
			[BudgetedTaskRow] [t3]
	),
	Coalesce((
		SELECT
			SUM(CAST((CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [t4].[StartedOn], [t4].[FinishedOn]) AS BigInt) AS Int), [t4].[StartedOn]), [t4].[FinishedOn]) AS BigInt) * 10000 AS Float) / 600000000)
		FROM
			[BudgetedTaskRow] [t4]
	), 0)
FROM
	[BudgetedTaskRow] [t1]

