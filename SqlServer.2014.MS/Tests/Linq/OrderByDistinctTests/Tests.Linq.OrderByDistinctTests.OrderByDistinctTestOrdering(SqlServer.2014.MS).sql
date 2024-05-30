BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NULL)
	CREATE TABLE [OrderByDistinctData]
	(
		[Id]            Int            NOT NULL,
		[DuplicateData] NVarChar(4000)     NULL,
		[OrderData1]    Int            NOT NULL,
		[OrderData2]    Int            NOT NULL,

		CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(1,N'One',1,1),
(10,N'Two',1,1),
(100,N'Three',1,1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1] DESC,
	[x].[OrderData2] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

