-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-03 13:30:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-03 14:30:00#

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
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP 2
	@Ticks + [r].[Id],
	@TotalMilliseconds + [r].[Id]
FROM
	[EventRow] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > @p

