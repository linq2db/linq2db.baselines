BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MAX([x].[OrderData1])

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MIN([x].[OrderData1]) DESC

