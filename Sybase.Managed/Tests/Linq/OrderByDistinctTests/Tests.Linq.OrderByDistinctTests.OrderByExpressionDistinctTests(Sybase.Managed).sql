BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 3
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MAX([x].[OrderData1] % 3)

