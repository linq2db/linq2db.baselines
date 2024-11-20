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

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
SELECT 1,'One',1,1 UNION ALL
SELECT 2,'One',1,10 UNION ALL
SELECT 3,'One',2,2 UNION ALL
SELECT 4,'One',3,3 UNION ALL
SELECT 5,'One',4,4 UNION ALL
SELECT 6,'One',5,5 UNION ALL
SELECT 10,'Two',1,1 UNION ALL
SELECT 20,'Two',1,10 UNION ALL
SELECT 30,'Two',2,2 UNION ALL
SELECT 40,'Two',3,3 UNION ALL
SELECT 50,'Two',4,4 UNION ALL
SELECT 60,'Two',5,5 UNION ALL
SELECT 100,'Three',1,1 UNION ALL
SELECT 200,'Three',1,10 UNION ALL
SELECT 300,'Three',2,2 UNION ALL
SELECT 400,'Three',3,3 UNION ALL
SELECT 500,'Three',4,4 UNION ALL
SELECT 600,'Three',5,5

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
GROUP BY
	[x].[DuplicateData]
ORDER BY
	[x].[DuplicateData]
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
GROUP BY
	[x].[DuplicateData]
ORDER BY
	[x].[DuplicateData]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlCe

DROP TABLE [OrderByDistinctData]

