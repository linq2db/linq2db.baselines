-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
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
SELECT TOP (2)
	[r].[StartedOn]
FROM
	[BudgetedTaskRow] [r]

-- SqlCe
SELECT TOP (2)
	DateAdd(millisecond, (CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + [r].[Budget] * 10000000 AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + [r].[Budget] * 10000000 AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + [r].[Budget] * 10000000 AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn]))),
	DateAdd(millisecond, (CAST(CAST([r].[Budget] + [r].[Budget] AS BigInt) * 10000000 - ((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(CAST([r].[Budget] + [r].[Budget] AS BigInt) * 10000000 - ((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(CAST([r].[Budget] + [r].[Budget] AS BigInt) * 10000000 - ((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn]))),
	DateAdd(millisecond, ((CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + [r].[Budget] * 10000000 AS BigInt) * -1) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, ((CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + [r].[Budget] * 10000000 AS BigInt) * -1) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, (CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + [r].[Budget] * 10000000 AS BigInt) * -1) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[BudgetedTaskRow] [r]

