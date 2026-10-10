-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Category],
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL))
FROM
	[CategorySales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) >= 15

