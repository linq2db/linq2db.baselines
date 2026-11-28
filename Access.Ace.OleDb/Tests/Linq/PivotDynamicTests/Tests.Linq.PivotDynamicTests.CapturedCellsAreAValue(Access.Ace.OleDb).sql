-- Access.Ace.OleDb AccessOleDb
SELECT
	[g_1].[Category],
	SUM(IIF([g_1].[Year] = 2000, [g_1].[Amount], NULL)),
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(2, 0) -- AnsiString
SET     @p = 20

SELECT
	[x].[Id]
FROM
	[CategorySales] [x]
WHERE
	[x].[Amount] = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @Cells VarChar(2, 0) -- AnsiString
SET     @Cells = 20

SELECT
	[x].[Id]
FROM
	[CategorySales] [x]
WHERE
	[x].[Amount] = @Cells

