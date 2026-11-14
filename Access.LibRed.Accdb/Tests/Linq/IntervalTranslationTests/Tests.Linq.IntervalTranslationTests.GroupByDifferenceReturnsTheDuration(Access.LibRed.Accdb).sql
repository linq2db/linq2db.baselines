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
DECLARE @Id  -- Int32
SET     @Id = 2
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
SET     @Id = 3
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
SELECT
	[g_1].[FinishedOn],
	[g_1].[StartedOn],
	COUNT(*)
FROM
	[BudgetedTaskRow] [g_1]
GROUP BY
	[g_1].[FinishedOn],
	[g_1].[StartedOn]
ORDER BY
	[g_1].[FinishedOn],
	[g_1].[StartedOn]

