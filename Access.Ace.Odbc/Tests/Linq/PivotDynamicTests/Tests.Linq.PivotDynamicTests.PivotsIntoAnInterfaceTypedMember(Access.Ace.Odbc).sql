-- Access.Ace.Odbc AccessODBC
SELECT
	[x].[Category],
	SUM(IIF([x].[Year] = 2000, [x].[Amount], NULL)),
	SUM(IIF([x].[Year] = 2010, [x].[Amount], NULL))
FROM
	[Sales] [x]
GROUP BY
	[x].[Category]

