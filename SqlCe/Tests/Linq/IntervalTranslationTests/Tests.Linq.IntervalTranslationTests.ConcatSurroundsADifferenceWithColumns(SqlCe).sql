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
			CASE
				WHEN [t1].[Source] = [t1].[c1] THEN 1
				ELSE 0
			END as [c1],
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
					(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt), [r_1].[StartedOn]), [r_1].[FinishedOn]) AS BigInt) * 10000 as [Duration_1]
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
	CASE
		WHEN [t2].[c1] IS NOT NULL THEN CASE
			WHEN [t2].[c1] = 1 THEN [t2].[Source]
			ELSE [t2].[Source_1]
		END
		ELSE [t2].[Source_2]
	END

