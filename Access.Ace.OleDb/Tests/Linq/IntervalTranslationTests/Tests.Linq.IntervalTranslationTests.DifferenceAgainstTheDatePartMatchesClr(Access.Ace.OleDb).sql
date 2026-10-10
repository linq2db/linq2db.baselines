-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-06-01 15:00:00#

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

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	DateDiff('h', DateValue([r].[FinishedOn]), [r].[FinishedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', DateValue([r].[FinishedOn]), [r].[FinishedOn]), DateValue([r].[FinishedOn])), [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', DateValue([r].[FinishedOn]), [r].[FinishedOn]), DateValue([r].[FinishedOn])), [r].[FinishedOn]), DateAdd('h', DateDiff('h', DateValue([r].[FinishedOn]), [r].[FinishedOn]), DateValue([r].[FinishedOn]))), [r].[FinishedOn])) / 3600
FROM
	[EventRow] [r]

