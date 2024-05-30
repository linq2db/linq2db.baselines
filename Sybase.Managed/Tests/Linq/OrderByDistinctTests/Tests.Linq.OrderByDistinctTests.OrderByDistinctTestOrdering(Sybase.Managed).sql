BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderByDistinctData') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderByDistinctData') IS NULL)
	EXECUTE('
		CREATE TABLE [OrderByDistinctData]
		(
			[Id]            Int           NOT NULL,
			[DuplicateData] NVarChar(255)     NULL,
			[OrderData1]    Int           NOT NULL,
			[OrderData2]    Int           NOT NULL,

			CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
SELECT 1,'One',1,1 UNION ALL
SELECT 10,'Two',1,1 UNION ALL
SELECT 100,'Three',1,1

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
ORDER BY
	[x].[OrderData1]

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
ORDER BY
	[x].[OrderData1] DESC

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
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2]

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
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC

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
ORDER BY
	[x].[OrderData1] DESC,
	[x].[OrderData2] DESC

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
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderByDistinctData') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

