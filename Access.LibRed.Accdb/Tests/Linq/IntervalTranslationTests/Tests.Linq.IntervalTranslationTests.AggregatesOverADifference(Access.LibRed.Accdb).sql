-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 13:00:00#
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	(
		SELECT
			MIN((DateDiff_Big('d', [t4].[StartedOn], [t4].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [t4].[StartedOn], [t4].[FinishedOn]), [t4].[StartedOn]), [t4].[FinishedOn]) * 10000)
		FROM
			[BudgetedTaskRow] [t4]
	),
	(
		SELECT
			MAX((DateDiff_Big('d', [t5].[StartedOn], [t5].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [t5].[StartedOn], [t5].[FinishedOn]), [t5].[StartedOn]), [t5].[FinishedOn]) * 10000)
		FROM
			[BudgetedTaskRow] [t5]
	),
	CASE
		WHEN [t2].[TotalMin] IS NULL THEN 0
		ELSE [t2].[TotalMin]
	END
FROM
	[BudgetedTaskRow] [t3]
		LEFT JOIN (
			SELECT
				SUM(DateDiff_Big('n', [t1].[StartedOn], [t1].[FinishedOn]) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [t1].[StartedOn], [t1].[FinishedOn]), [t1].[StartedOn]), [t1].[FinishedOn]) / 60000) as [TotalMin]
			FROM
				[BudgetedTaskRow] [t1]
		) [t2] ON 1=1

