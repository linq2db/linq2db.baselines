BeforeExecute
-- SqlCe

DROP TABLE [OrderByDistinctData]

BeforeExecute
-- SqlCe

CREATE TABLE [OrderByDistinctData]
(
	[Id]            Int           NOT NULL,
	[DuplicateData] NVarChar(255)     NULL,
	[OrderData1]    Int           NOT NULL,
	[OrderData2]    Int           NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe
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
-- SqlCe

DROP TABLE [OrderByDistinctData]

