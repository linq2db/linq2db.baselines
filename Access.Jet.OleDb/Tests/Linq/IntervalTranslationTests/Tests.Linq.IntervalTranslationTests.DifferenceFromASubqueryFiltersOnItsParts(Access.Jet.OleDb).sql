-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-01 15:00:00#

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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-01 11:00:00#

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
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	DateDiff('h', [x].[StartedOn], [x].[FinishedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]), [x].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]), [x].[FinishedOn]), DateAdd('h', DateDiff('h', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn])), [x].[FinishedOn])) / 3600 > 3

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	IIF([x].[FinishedOn] >= DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]), [x].[FinishedOn]), DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn])) > [x].[FinishedOn], DateDiff('h', DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]), [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]), [x].[FinishedOn]), DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn])) < [x].[FinishedOn], DateDiff('h', DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]), [x].[FinishedOn]) + 1, DateDiff('h', DateAdd('d', IIF([x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) - 1, IIF([x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn], DateDiff('d', [x].[StartedOn], [x].[FinishedOn]) + 1, DateDiff('d', [x].[StartedOn], [x].[FinishedOn]))), [x].[StartedOn]), [x].[FinishedOn]))) MOD 24 = 1

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	[x].[FinishedOn] DESC,
	[x].[StartedOn] DESC

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[FinishedOn],
	[x].[StartedOn]
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[FinishedOn],
	[r].[StartedOn]
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

