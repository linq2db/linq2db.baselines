-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2025-06-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2025-06-01 10:00:00#

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
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	DateDiff('d', [r].[StartedOn], Now) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], Now), [r].[StartedOn]), Now)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], Now), [r].[StartedOn]), Now), DateAdd('d', DateDiff('d', [r].[StartedOn], Now), [r].[StartedOn])), Now)) / 86400 > 1

