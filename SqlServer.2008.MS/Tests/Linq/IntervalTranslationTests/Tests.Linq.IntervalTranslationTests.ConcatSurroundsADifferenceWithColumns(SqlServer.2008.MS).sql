-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-01T11:00:00.0000000' AS DATETIME2)
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

-- SqlServer.2008.MS SqlServer.2008
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
				WHEN [t1].[Source] = 1 THEN 1
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
					[r].[Budget] as [Duration],
					NULL as [Duration_1]
				FROM
					[BudgetedTaskRow] [r]
				UNION ALL
				SELECT
					CAST(2 AS Int) as [Source],
					NULL as [Duration],
					(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) AS Int), [r_1].[StartedOn]) AS DateTime2), [r_1].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) AS Int), [r_1].[StartedOn]) AS DateTime2), [r_1].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) AS Int), [r_1].[StartedOn]) AS DateTime2)), [r_1].[FinishedOn]) AS BigInt) / 100 as [Duration_1]
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

