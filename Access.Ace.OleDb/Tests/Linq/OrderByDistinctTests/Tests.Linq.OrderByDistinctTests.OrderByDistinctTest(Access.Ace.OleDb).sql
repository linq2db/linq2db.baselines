-- Access.Ace.OleDb AccessOleDb

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MAX([x].[OrderData1])

-- Access.Ace.OleDb AccessOleDb

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MIN([x].[OrderData1]) DESC

