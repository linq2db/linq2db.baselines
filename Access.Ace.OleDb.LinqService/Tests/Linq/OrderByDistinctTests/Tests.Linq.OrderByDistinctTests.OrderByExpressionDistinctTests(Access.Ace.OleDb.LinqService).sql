BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MAX([x].[OrderData1] MOD 3)

