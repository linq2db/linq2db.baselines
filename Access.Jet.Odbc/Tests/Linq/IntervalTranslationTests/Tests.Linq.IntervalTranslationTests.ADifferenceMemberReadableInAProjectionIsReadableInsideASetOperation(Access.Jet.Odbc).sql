-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-01 10:00:00#

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
	[r].[FinishedOn],
	[r].[StartedOn]
FROM
	[EventRow] [r]

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[FinishedOn],
	[r].[StartedOn]
FROM
	[EventRow] [r]
WHERE
	[r].[Id] > 0
UNION ALL
SELECT
	[r_1].[FinishedOn],
	[r_1].[StartedOn]
FROM
	[EventRow] [r_1]
WHERE
	[r_1].[Id] <= 0

