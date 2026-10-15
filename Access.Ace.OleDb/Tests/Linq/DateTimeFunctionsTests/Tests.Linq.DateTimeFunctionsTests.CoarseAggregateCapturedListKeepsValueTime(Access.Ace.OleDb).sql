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
	(
		SELECT
			MAX([g_1].[Value]) as [Max_1]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN (@value)

-- Access.Ace.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Value]) as [Max_1]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN (#2026-06-01 10:00:00#)

