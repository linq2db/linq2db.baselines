-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = NULL

INSERT INTO [CoarseNullableEventRow]
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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-06-01 11:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-06-01 13:00:00#

INSERT INTO [CoarseNullableEventRow]
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
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	IIF([r].[FinishedOn] IS NULL, [r].[StartedOn], [r].[FinishedOn]) < @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	@value > IIF([r].[FinishedOn] IS NULL, [r].[StartedOn], [r].[FinishedOn])

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	IIF([r].[FinishedOn] IS NULL, [r].[StartedOn], [r].[FinishedOn]) = @value

