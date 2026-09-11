-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
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

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[r].[FinishedOn],
	[r].[StartedOn]
FROM
	[EventRow] [r]

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn])
FROM
	[EventRow] [r]

