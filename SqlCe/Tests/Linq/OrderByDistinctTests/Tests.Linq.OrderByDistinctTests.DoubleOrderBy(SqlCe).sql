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
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[q1].[Id],
	[q1].[DuplicateData],
	[q1].[OrderData1],
	[q1].[OrderData2]
FROM
	(
		SELECT TOP (@take)
			[t1].[Id]
		FROM
			[OrderByDistinctData] [t1]
		ORDER BY
			[t1].[OrderData2]
	) [q2]
		INNER JOIN [OrderByDistinctData] [q1] ON [q1].[Id] = [q2].[Id]
ORDER BY
	[q1].[OrderData1]

BeforeExecute
-- SqlCe

DROP TABLE [OrderByDistinctData]

