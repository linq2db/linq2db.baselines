-- SqlCe
DECLARE @Id Int -- Int32
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

-- SqlCe
DECLARE @Id Int -- Int32
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

-- SqlCe
SELECT TOP (1)
	[t2].[Min_1],
	[t4].[Max_1],
	Coalesce([t6].[TotalMin], 0)
FROM
	[BudgetedTaskRow] [t7]
		LEFT JOIN (
			SELECT
				MIN((CAST(DateDiff(day, [t1].[StartedOn], [t1].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t1].[StartedOn], [t1].[FinishedOn]) AS BigInt), [t1].[StartedOn]), [t1].[FinishedOn]) AS BigInt) * 10000) as [Min_1]
			FROM
				[BudgetedTaskRow] [t1]
		) [t2] ON 1=1
		LEFT JOIN (
			SELECT
				MAX((CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t3].[StartedOn], [t3].[FinishedOn]) AS BigInt), [t3].[StartedOn]), [t3].[FinishedOn]) AS BigInt) * 10000) as [Max_1]
			FROM
				[BudgetedTaskRow] [t3]
		) [t4] ON 1=1
		LEFT JOIN (
			SELECT
				SUM(CAST((CAST(DateDiff(day, [t5].[StartedOn], [t5].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t5].[StartedOn], [t5].[FinishedOn]) AS BigInt), [t5].[StartedOn]), [t5].[FinishedOn]) AS BigInt) * 10000 AS Float) / 600000000) as [TotalMin]
			FROM
				[BudgetedTaskRow] [t5]
		) [t6] ON 1=1

