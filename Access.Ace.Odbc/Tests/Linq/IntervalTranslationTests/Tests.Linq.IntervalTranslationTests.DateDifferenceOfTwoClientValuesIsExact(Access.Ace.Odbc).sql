-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-03 13:30:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-03 14:30:00#

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
DECLARE @Ticks Int -- Int32
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP 2
	? + [r].[Id],
	? + [r].[Id]
FROM
	[EventRow] [r]

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- Access.Ace.Odbc AccessODBC
DECLARE @p DateTime
SET     @p = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > ?

