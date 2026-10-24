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
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DateValue([r].[Value]) = #2026-06-01#

-- Access.Ace.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DateValue([r].[Value]) < #2026-06-01#

-- Access.Ace.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	#2026-06-01# = DateValue([r].[Value])

