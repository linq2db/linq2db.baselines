-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @extra BigInt -- Int64
SET     @extra = 300
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000

SELECT TOP (2)
	[r].[Budget] + @extra,
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 + @Ticks AS BigInt),
	CAST(@Ticks + (CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 AS BigInt),
	CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) - @Ticks AS BigInt)
FROM
	[BudgetedTaskRow] [r]

