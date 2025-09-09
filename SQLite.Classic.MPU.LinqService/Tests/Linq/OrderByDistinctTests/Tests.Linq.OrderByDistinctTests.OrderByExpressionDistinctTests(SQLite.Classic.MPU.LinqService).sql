BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
GROUP BY
	[x].[DuplicateData]
ORDER BY
	MAX([x].[OrderData1] % 3)
LIMIT @take OFFSET @skip

