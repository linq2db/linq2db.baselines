BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

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
LIMIT @take OFFSET @skip

