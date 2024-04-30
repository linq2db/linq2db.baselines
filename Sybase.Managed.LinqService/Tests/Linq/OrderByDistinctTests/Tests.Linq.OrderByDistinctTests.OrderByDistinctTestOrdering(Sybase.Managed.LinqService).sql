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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DuplicateData UniVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @DuplicateData UniVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @DuplicateData UniVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

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

