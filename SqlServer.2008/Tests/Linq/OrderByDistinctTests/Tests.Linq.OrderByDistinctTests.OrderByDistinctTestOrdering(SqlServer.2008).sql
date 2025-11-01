-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

-- SqlServer.2008
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

