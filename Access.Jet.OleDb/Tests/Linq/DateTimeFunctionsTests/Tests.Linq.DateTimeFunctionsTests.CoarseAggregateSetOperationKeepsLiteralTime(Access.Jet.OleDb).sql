-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
SELECT
	MAX([g_1].[Day])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CDate(#2026-06-01 10:00:00#)
FROM
	[CoarseDateShapesRow] [r]

-- Access.Jet.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	MAX([g_1].[Value])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CDate(@value)
FROM
	[CoarseDateShapesRow] [r]

