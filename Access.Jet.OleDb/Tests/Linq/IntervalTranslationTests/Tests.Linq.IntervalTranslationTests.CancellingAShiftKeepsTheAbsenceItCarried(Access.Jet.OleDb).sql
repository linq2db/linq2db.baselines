-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = NULL
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-03 13:30:00#

INSERT INTO [OptionalEventRow]
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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = NULL

INSERT INTO [OptionalEventRow]
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
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-03 13:30:00#

INSERT INTO [OptionalEventRow]
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
	[r].[Id],
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[OptionalEventRow] [r]
ORDER BY
	[r].[Id]

