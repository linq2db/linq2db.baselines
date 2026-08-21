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
SELECT
	[t1].[Source],
	[t1].[First_1],
	[t1].[Second_1],
	[t1].[First_2],
	[t1].[Second_2]
FROM
	(
		SELECT
			CAST(1 AS Int) as [Source],
			[r].[Budget] as [First_1],
			(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 as [Second_1],
			NULL as [First_2],
			NULL as [Second_2]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Source],
			NULL as [First_1],
			NULL as [Second_1],
			(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt), [r_1].[StartedOn]), [r_1].[FinishedOn]) AS BigInt) * 10000 as [First_2],
			[r_1].[Budget] as [Second_2]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

