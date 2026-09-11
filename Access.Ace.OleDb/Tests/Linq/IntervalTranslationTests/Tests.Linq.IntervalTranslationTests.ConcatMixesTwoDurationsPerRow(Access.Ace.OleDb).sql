-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-01 11:00:00#
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

-- Access.Ace.OleDb AccessOleDb
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
			1 as [Source],
			[r].[Budget] as [First_1],
			IIF(False, #0001-01-01#, NULL) as [First_2],
			IIF(False, #0001-01-01#, NULL) as [First_3],
			[r].[FinishedOn] as [Second_1],
			[r].[StartedOn] as [Second_2],
			IIF(False, 0, NULL) as [Second_3]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			2 as [Source],
			IIF(False, 0, NULL) as [First_1],
			[r_1].[FinishedOn] as [First_2],
			[r_1].[StartedOn] as [First_3],
			IIF(False, #0001-01-01#, NULL) as [Second_1],
			IIF(False, #0001-01-01#, NULL) as [Second_2],
			[r_1].[Budget] as [Second_3]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

