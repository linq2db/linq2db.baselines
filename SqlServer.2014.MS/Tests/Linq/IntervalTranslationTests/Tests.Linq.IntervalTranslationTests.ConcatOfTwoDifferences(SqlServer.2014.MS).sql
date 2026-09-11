-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Source],
	[t1].[Duration],
	[t1].[Duration_1]
FROM
	(
		SELECT
			CAST(1 AS Int) as [Source],
			[r].[FinishedOn] as [Duration],
			[r].[StartedOn] as [Duration_1]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Source],
			[r_1].[FinishedOn] as [Duration],
			[r_1].[StartedOn] as [Duration_1]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

