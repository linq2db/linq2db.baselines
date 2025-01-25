BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t2].[DuplicateData],
	[t2].[OrderData1]
FROM
	(
		SELECT
			[t1].[DuplicateData],
			[t1].[OrderData1],
			ROW_NUMBER() OVER (ORDER BY [t1].[OrderData1]) as [RN]
		FROM
			(
				SELECT DISTINCT
					[x].[DuplicateData],
					[x].[OrderData1]
				FROM
					[OrderByDistinctData] [x]
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)
ORDER BY
	[t2].[OrderData1]

