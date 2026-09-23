-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-06-01 10:00:00#
DECLARE @OpenedOn DBDate -- Date
SET     @OpenedOn = #2026-06-01#
DECLARE @ClosedOn DBDate -- Date
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
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-05-25 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-05-25 10:00:00#
DECLARE @OpenedOn DBDate -- Date
SET     @OpenedOn = #2026-05-25#
DECLARE @ClosedOn DBDate -- Date
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
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])), MIN([grp].[StartedOn])), MAX([grp].[StartedOn]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])), MIN([grp].[StartedOn])), MAX([grp].[StartedOn])), DateAdd('d', DateDiff('d', MIN([grp].[StartedOn]), MAX([grp].[StartedOn])), MIN([grp].[StartedOn]))), MAX([grp].[StartedOn]))) / 86400 + 1
FROM
	[CoarseEventRow] [grp]

