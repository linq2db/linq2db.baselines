BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData],
	[t2].[OrderData2]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			[t1].[OrderData2],
			ROW_NUMBER() OVER (ORDER BY [t1].[OrderData2] DESC) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData],
					[x].[OrderData2]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)
ORDER BY
	[t2].[OrderData2] DESC

