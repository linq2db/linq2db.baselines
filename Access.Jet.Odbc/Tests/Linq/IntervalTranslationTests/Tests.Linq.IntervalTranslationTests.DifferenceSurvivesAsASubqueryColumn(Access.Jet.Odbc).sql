-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-01 15:00:00#

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
DECLARE @Id Int -- Int32
SET     @Id = 2
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

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[FinishedOn],
	[t1].[StartedOn]
FROM
	(
		SELECT
			[r].[FinishedOn],
			[r].[StartedOn],
			DateDiff('h', [r].[StartedOn], [r].[FinishedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]), DateAdd('h', DateDiff('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn])), [r].[FinishedOn])) / 3600 as [TotalHours],
			[r].[Id]
		FROM
			[EventRow] [r]
	) [t1]
WHERE
	[t1].[TotalHours] > 3
ORDER BY
	[t1].[Id]

