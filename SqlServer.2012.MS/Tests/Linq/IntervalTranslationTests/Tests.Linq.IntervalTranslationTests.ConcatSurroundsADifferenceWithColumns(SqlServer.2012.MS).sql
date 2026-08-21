-- SqlServer.2012.MS SqlServer.2012
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

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t2].[Source],
	[t2].[Duration],
	[t2].[Duration_1],
	[t2].[Duration_2],
	[t2].[Duration_3],
	[t2].[Duration_4]
FROM
	(
		SELECT
			[t1].[Source],
			IIF([t1].[Source] = 1, 1, 0) as [Duration],
			[t1].[Duration] as [Duration_1],
			[t1].[Duration_1] as [Duration_2],
			[t1].[Duration_2] as [Duration_3],
			NULL as [Duration_4]
		FROM
			(
				SELECT
					CAST(1 AS Int) as [Source],
					[r].[Budget] as [Duration],
					NULL as [Duration_1],
					NULL as [Duration_2]
				FROM
					[BudgetedTaskRow] [r]
				UNION ALL
				SELECT
					CAST(2 AS Int) as [Source],
					NULL as [Duration],
					[r_1].[FinishedOn] as [Duration_1],
					[r_1].[StartedOn] as [Duration_2]
				FROM
					[BudgetedTaskRow] [r_1]
			) [t1]
		UNION ALL
		SELECT
			CAST(3 AS Int) as [Source],
			NULL as [Duration],
			NULL as [Duration_1],
			NULL as [Duration_2],
			NULL as [Duration_3],
			[r_2].[Budget] as [Duration_4]
		FROM
			[BudgetedTaskRow] [r_2]
	) [t2]
ORDER BY
	[t2].[Source]

