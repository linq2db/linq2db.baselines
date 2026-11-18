-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @extra  -- Int64
SET     @extra = 300
DECLARE @Ticks  -- Int64
SET     @Ticks = 3000000000

SELECT TOP 2
	[r].[Budget] + @extra,
	(DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000 + @Ticks,
	@Ticks + (DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000,
	((DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000) - @Ticks
FROM
	[BudgetedTaskRow] [r]

