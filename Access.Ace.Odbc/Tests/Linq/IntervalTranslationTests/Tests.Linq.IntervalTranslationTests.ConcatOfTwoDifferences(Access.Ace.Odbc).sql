-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-01 11:00:00#
DECLARE @Budget VarChar -- AnsiString
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
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Source],
	[t1].[Duration],
	[t1].[Duration_1]
FROM
	(
		SELECT
			1 as [Source],
			[r].[FinishedOn] as [Duration],
			[r].[StartedOn] as [Duration_1]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			2 as [Source],
			[r_1].[FinishedOn] as [Duration],
			[r_1].[StartedOn] as [Duration_1]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

