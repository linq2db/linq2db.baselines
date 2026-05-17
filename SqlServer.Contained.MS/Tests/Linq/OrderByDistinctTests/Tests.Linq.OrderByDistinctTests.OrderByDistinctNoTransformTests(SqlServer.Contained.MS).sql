-- SqlServer.Contained.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData],
	[x].[OrderData1]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

