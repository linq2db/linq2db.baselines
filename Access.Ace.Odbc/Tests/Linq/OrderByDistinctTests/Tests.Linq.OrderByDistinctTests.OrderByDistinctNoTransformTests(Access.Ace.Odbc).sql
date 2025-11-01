-- Access.Ace.Odbc AccessODBC

SELECT DISTINCT TOP 3
	[x].[DuplicateData],
	[x].[OrderData1]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1]

