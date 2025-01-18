BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT TOP 3
	[x].[DuplicateData],
	[x].[OrderData2]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData2] DESC

