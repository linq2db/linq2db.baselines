BeforeExecute
-- SqlServer.2005

CREATE TABLE [OrderByDistinctData]
(
	[Id]            Int            NOT NULL,
	[DuplicateData] NVarChar(4000)     NULL,
	[OrderData1]    Int            NOT NULL,
	[OrderData2]    Int            NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
SELECT 1,N'One',1,1 UNION ALL
SELECT 10,N'Two',1,1 UNION ALL
SELECT 100,N'Three',1,1

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY Max([x].[OrderData1])) as [RN]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY [x].[OrderData1]) as [RN]
		FROM
			[OrderByDistinctData] [x]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY Min([x].[OrderData1]) DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY [x].[OrderData1] DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY Max([x].[OrderData1]), Max([x].[OrderData2])) as [RN]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY [x].[OrderData1], [x].[OrderData2]) as [RN]
		FROM
			[OrderByDistinctData] [x]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY Max([x].[OrderData1]), Min([x].[OrderData2]) DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY [x].[OrderData1], [x].[OrderData2] DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY Min([x].[OrderData1]) DESC, Min([x].[OrderData2]) DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY [x].[OrderData1] DESC, [x].[OrderData2] DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY Max([x].[OrderData1]), Min([x].[OrderData2]) DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY [x].[OrderData1], [x].[OrderData2] DESC) as [RN]
		FROM
			[OrderByDistinctData] [x]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005

DROP TABLE [OrderByDistinctData]

