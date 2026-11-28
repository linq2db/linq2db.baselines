-- Access.Jet.Odbc AccessODBC
SELECT DISTINCT
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010

-- Access.Jet.Odbc AccessODBC
SELECT DISTINCT TOP 2
	[x].[Amount]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Category] = 'A'

-- Access.Jet.Odbc AccessODBC
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[x].[Category]
FROM
	[CategorySales] [x]
WHERE
	[x].[Year] = 2010 AND [x].[Amount] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @castOfA Int -- Int32
SET     @castOfA = 20

SELECT
	[r].[Category]
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) = ?

-- Access.Jet.Odbc AccessODBC
SELECT DISTINCT
	SUM(IIF([g_1].[Year] = 2010, [g_1].[Amount], NULL))
FROM
	[CategorySales] [g_1]
GROUP BY
	[g_1].[Category]

-- Access.Jet.Odbc AccessODBC
SELECT
	SUM(IIF([r].[Year] = 2000, [r].[Amount], NULL)),
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]

