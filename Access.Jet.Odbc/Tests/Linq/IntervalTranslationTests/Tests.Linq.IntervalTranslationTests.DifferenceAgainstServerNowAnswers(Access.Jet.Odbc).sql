-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2025-06-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2025-06-01 10:00:00#

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
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	DateDiff('d', [r].[StartedOn], Now) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], Now), [r].[StartedOn]), Now)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], Now), [r].[StartedOn]), Now), DateAdd('d', DateDiff('d', [r].[StartedOn], Now), [r].[StartedOn])), Now)) / 86400 > 1

