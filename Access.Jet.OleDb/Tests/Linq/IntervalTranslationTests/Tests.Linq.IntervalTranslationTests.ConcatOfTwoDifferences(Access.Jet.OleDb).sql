-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Source],
	[t1].[FinishedOn],
	[t1].[StartedOn]
FROM
	(
		SELECT
			1 as [Source],
			[r].[FinishedOn],
			[r].[StartedOn]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			2 as [Source],
			[r_1].[FinishedOn],
			[r_1].[StartedOn]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

