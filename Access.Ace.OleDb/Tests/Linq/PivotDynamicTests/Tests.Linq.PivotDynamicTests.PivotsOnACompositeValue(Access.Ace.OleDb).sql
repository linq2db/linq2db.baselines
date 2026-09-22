-- Access.Ace.OleDb AccessOleDb
DECLARE @Year Integer -- Int32
SET     @Year = 2000
DECLARE @Quarter Integer -- Int32
SET     @Quarter = 1
DECLARE @Year_1 Integer -- Int32
SET     @Year_1 = 2000
DECLARE @Quarter_1 Integer -- Int32
SET     @Quarter_1 = 2

SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = CVar(@Year) AND [g_1].[Quarter] = CVar(@Quarter), [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = CVar(@Year_1) AND [g_1].[Quarter] = CVar(@Quarter_1), [g_1].[Amount], NULL))
FROM
	[QuarterAmounts] [g_1]
GROUP BY
	[g_1].[Category]

