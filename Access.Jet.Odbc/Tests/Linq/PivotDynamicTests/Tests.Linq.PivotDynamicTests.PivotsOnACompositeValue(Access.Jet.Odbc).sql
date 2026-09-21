-- Access.Jet.Odbc AccessODBC
DECLARE @Year Int -- Int32
SET     @Year = 2000
DECLARE @Quarter Int -- Int32
SET     @Quarter = 1
DECLARE @Year Int -- Int32
SET     @Year = 2000
DECLARE @Quarter Int -- Int32
SET     @Quarter = 2

SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = CVar(?) AND [g_1].[Quarter] = CVar(?), [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = CVar(?) AND [g_1].[Quarter] = CVar(?), [g_1].[Amount], NULL))
FROM
	[QuarterAmounts] [g_1]
GROUP BY
	[g_1].[Category]

