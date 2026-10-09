-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	IIF(MIN([grp].[StartedOn]) IS NULL OR MAX([grp].[StartedOn]) IS NULL, NULL, DateDiff('d', IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn])), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn]))) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn])), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn]))), IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn]))), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn])))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn])), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn]))), IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn]))), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn]))), DateAdd('d', DateDiff('d', IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn])), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn]))), IIF(IsNull(MIN([grp].[StartedOn])), #1899-12-30#, MIN([grp].[StartedOn])))), IIF(IsNull(MAX([grp].[StartedOn])), #1899-12-30#, MAX([grp].[StartedOn])))) / 86400) + 1
FROM
	[CoarseEventRow] [grp]

