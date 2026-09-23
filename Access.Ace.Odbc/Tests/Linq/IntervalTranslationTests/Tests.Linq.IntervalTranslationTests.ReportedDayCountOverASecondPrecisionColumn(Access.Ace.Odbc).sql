-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-06-01 10:00:00#
DECLARE @OpenedOn Date
SET     @OpenedOn = #2026-06-01#
DECLARE @ClosedOn Date
SET     @ClosedOn = #2026-06-01#

INSERT INTO [CoarseEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[OpenedOn],
	[ClosedOn]
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-05-25 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-05-25 10:00:00#
DECLARE @OpenedOn Date
SET     @OpenedOn = #2026-05-25#
DECLARE @ClosedOn Date
SET     @ClosedOn = #2026-05-25#

INSERT INTO [CoarseEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[OpenedOn],
	[ClosedOn]
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])), MIN([grp].[StartedOn])), MAX([grp].[StartedOn]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])), MIN([grp].[StartedOn])), MAX([grp].[StartedOn])), DateAdd('d', DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])), MIN([grp].[StartedOn]))), MAX([grp].[StartedOn]))) / 86400 + 1
FROM
	[CoarseEventRow] [grp]

