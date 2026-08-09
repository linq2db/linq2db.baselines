-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-03 13:30:00#

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
SELECT TOP 2
	IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], DateDiff('d', [r].[StartedOn], [r].[FinishedOn]) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], DateDiff('d', [r].[StartedOn], [r].[FinishedOn]) + 1, DateDiff('d', [r].[StartedOn], [r].[FinishedOn]))),
	IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) + 1, DateDiff('h', [r].[StartedOn], [r].[FinishedOn]))) MOD 24,
	IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('n', DateDiff('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], DateDiff('n', [r].[StartedOn], [r].[FinishedOn]) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('n', DateDiff('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], DateDiff('n', [r].[StartedOn], [r].[FinishedOn]) + 1, DateDiff('n', [r].[StartedOn], [r].[FinishedOn]))) MOD 60,
	DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) + DateDiff('s', DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 3600
FROM
	[EventRow] [r]

