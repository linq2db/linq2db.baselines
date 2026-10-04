-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Date -- DateTime
SET     @Value = #2026-06-01 10:00:00#
DECLARE @Day DBDate -- Date
SET     @Day = #2026-06-01#
DECLARE @Wide Date -- DateTime
SET     @Wide = #2026-06-01 10:00:00#

INSERT INTO [CoarseDateShapesRow]
(
	[Id],
	[Value],
	[Day],
	[Wide]
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	CDate([r].[Wide]) < @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	CDate([r].[Wide]) >= @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	CDate([r].[Wide]) = @value

