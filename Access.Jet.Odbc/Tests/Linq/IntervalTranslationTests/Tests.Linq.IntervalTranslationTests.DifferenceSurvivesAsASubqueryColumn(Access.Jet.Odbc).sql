-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-01 15:00:00#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-01 11:00:00#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[FinishedOn],
	[t1].[StartedOn]
FROM
	(
		SELECT
			IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) + 1, DateDiff('h', [r].[StartedOn], [r].[FinishedOn]))) + DateDiff('s', DateAdd('h', IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) + 1, DateDiff('h', [r].[StartedOn], [r].[FinishedOn]))), [r].[StartedOn]), [r].[FinishedOn]) / 3600 as [TotalHours],
			[r].[Id],
			[r].[FinishedOn],
			[r].[StartedOn]
		FROM
			[EventRow] [r]
	) [t1]
WHERE
	[t1].[TotalHours] > 3
ORDER BY
	[t1].[Id]

