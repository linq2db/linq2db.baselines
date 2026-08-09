-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:59:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-01 11:01:00#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	DateDiff('n', [r].[StartedOn], [r].[FinishedOn]) + DateDiff('s', DateAdd('n', DateDiff('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 60,
	IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('n', DateDiff('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], DateDiff('n', [r].[StartedOn], [r].[FinishedOn]) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('n', DateDiff('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], DateDiff('n', [r].[StartedOn], [r].[FinishedOn]) + 1, DateDiff('n', [r].[StartedOn], [r].[FinishedOn]))) MOD 60
FROM
	[EventRow] [r]

