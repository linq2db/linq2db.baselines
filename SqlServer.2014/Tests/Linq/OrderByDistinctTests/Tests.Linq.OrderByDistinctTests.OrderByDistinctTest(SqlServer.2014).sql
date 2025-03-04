BeforeExecute
-- SqlServer.2014
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
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

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
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014
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
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

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
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

