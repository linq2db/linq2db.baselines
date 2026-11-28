-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Category]
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) > 16

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Category]
FROM
	[Sales] [r]
GROUP BY
	[r].[Category]
HAVING
	SUM(IIF([r].[Year] = 2010, [r].[Amount], NULL)) > 16

