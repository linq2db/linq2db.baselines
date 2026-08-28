-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t2].[c1],
	[t2].[Source],
	[t2].[Duration],
	[t2].[Source_1],
	[t2].[Duration_1],
	[t2].[Source_2],
	[t2].[Duration_2]
FROM
	(
		SELECT
			IIF([t1].[Source] = [t1].[c1], 1, 0) as [c1],
			[t1].[Source],
			[t1].[Duration],
			[t1].[Source] as [Source_1],
			[t1].[Duration_1],
			NULL as [Source_2],
			NULL as [Duration_2]
		FROM
			(
				SELECT
					CAST(1 AS Int) as [Source],
					CAST(1 AS Int) as [c1],
					[r].[Budget] as [Duration],
					NULL as [Duration_1]
				FROM
					[BudgetedTaskRow] [r]
				UNION ALL
				SELECT
					CAST(2 AS Int) as [Source],
					CAST(1 AS Int) as [c1],
					NULL as [Duration],
					(DateDiff_Big(day, [r_1].[StartedOn], [r_1].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS Int), [r_1].[StartedOn]), [r_1].[FinishedOn]) / 100 as [Duration_1]
				FROM
					[BudgetedTaskRow] [r_1]
			) [t1]
		UNION ALL
		SELECT
			NULL as [c1],
			NULL as [Source],
			NULL as [Duration],
			NULL as [Source_1],
			NULL as [Duration_1],
			CAST(3 AS Int) as [Source_2],
			[r_2].[Budget] as [Duration_2]
		FROM
			[BudgetedTaskRow] [r_2]
	) [t2]
ORDER BY
	IIF([t2].[c1] IS NOT NULL, IIF([t2].[c1] = 1, [t2].[Source], [t2].[Source_1]), [t2].[Source_2])

