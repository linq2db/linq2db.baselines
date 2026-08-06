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

-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[x].[DuplicateData]
FROM
	(
		SELECT
			MAX([g_1].[OrderData1] % 3) as [OrderData1],
			[g_1].[DuplicateData]
		FROM
			[OrderByDistinctData] [g_1]
		GROUP BY
			[g_1].[DuplicateData]
	) [x]
ORDER BY
	[x].[OrderData1]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

