-- SqlServer.2005
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

-- SqlServer.2005
SELECT
	[t1].[Source],
	[t1].[First_1],
	[t1].[First_2],
	[t1].[First_3],
	[t1].[Second_1],
	[t1].[Second_2],
	[t1].[Second_3]
FROM
	(
		SELECT
			CAST(1 AS Int) as [Source],
			[r].[Budget] as [First_1],
			NULL as [First_2],
			NULL as [First_3],
			[r].[FinishedOn] as [Second_1],
			[r].[StartedOn] as [Second_2],
			NULL as [Second_3]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Source],
			NULL as [First_1],
			[r_1].[FinishedOn] as [First_2],
			[r_1].[StartedOn] as [First_3],
			NULL as [Second_1],
			NULL as [Second_2],
			[r_1].[Budget] as [Second_3]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

