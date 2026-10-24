-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
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

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[r].[StartedOn]
FROM
	[BudgetedTaskRow] [r]

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 + [r].[Budget] * 10000000 AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 + [r].[Budget] * 10000000 AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 + [r].[Budget] * 10000000 AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2)))),
	DateAdd(nanosecond, CAST((CAST(CAST([r].[Budget] + [r].[Budget] AS BigInt) * 10000000 - ((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(CAST([r].[Budget] + [r].[Budget] AS BigInt) * 10000000 - ((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(CAST([r].[Budget] + [r].[Budget] AS BigInt) * 10000000 - ((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2)))),
	DateAdd(nanosecond, CAST(((CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 + [r].[Budget] * 10000000 AS BigInt) * -1) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 + [r].[Budget] * 10000000 AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 + [r].[Budget] * 10000000 AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[BudgetedTaskRow] [r]

