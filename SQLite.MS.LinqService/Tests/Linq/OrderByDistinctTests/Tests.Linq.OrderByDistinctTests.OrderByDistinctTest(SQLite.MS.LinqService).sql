BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x_1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [x_1]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x_1].[DuplicateData]
FROM
	(
		SELECT
			[x].[DuplicateData]
		FROM
			[OrderByDistinctData] [x]
		GROUP BY
			[x].[DuplicateData]
	) [x_1]
LIMIT @take OFFSET @skip

