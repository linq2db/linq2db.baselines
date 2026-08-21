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
			[t1].[Source] = 1 as [Duration],
			[t1].[Duration] as [Duration_1],
			[t1].[Duration_1] as [Duration_2],
			[t1].[Duration_2] as [Duration_3],
			IIF(False, 0, NULL) as [Duration_4]
		FROM
			(
				SELECT
					1 as [Source],
					[r].[Budget] as [Duration],
					IIF(False, #0001-01-01#, NULL) as [Duration_1],
					IIF(False, #0001-01-01#, NULL) as [Duration_2]
				FROM
					[BudgetedTaskRow] [r]
				UNION ALL
				SELECT
					2 as [Source],
					IIF(False, 0, NULL) as [Duration],
					[r_1].[FinishedOn] as [Duration_1],
					[r_1].[StartedOn] as [Duration_2]
				FROM
					[BudgetedTaskRow] [r_1]
			) [t1]
		UNION ALL
		SELECT
			3 as [Source],
			IIF(False, False, NULL) as [Duration],
			IIF(False, 0, NULL) as [Duration_1],
			IIF(False, #0001-01-01#, NULL) as [Duration_2],
			IIF(False, #0001-01-01#, NULL) as [Duration_3],
			[r_2].[Budget] as [Duration_4]
		FROM
			[BudgetedTaskRow] [r_2]
	) [t2]
ORDER BY
	[t2].[Source]

