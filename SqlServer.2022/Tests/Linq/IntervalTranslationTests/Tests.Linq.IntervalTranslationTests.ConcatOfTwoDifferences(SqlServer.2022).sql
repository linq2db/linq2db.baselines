-- SqlServer.2022
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

-- SqlServer.2022
SELECT
	[t1].[Source],
	[t1].[Duration]
FROM
	(
		SELECT
			CAST(1 AS Int) as [Source],
			(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 as [Duration]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Source],
			(DateDiff_Big(day, [r_1].[StartedOn], [r_1].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS Int), [r_1].[StartedOn]), [r_1].[FinishedOn]) / 100 as [Duration]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

