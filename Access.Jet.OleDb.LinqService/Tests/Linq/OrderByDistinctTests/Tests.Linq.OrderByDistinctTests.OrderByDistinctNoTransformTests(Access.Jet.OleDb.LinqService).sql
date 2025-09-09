BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT DISTINCT TOP 3
	[x].[DuplicateData],
	[x].[OrderData1]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1]

