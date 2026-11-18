-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 11:00:00#
DECLARE @Budget  -- Int64
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Source],
	[t1].[Duration]
FROM
	(
		SELECT
			1 as [Source],
			(DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000 as [Duration]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			2 as [Source],
			(DateDiff_Big('d', [r_1].[StartedOn], [r_1].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r_1].[StartedOn], [r_1].[FinishedOn]), [r_1].[StartedOn]), [r_1].[FinishedOn]) * 10000 as [Duration]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

