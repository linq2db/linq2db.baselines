BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[q1].[Id],
	[q1].[DuplicateData],
	[q1].[OrderData1],
	[q1].[OrderData2]
FROM
	(
		SELECT TOP (@take)
			[t1].[Id]
		FROM
			[OrderByDistinctData] [t1]
		ORDER BY
			[t1].[OrderData2]
	) [q2]
		INNER JOIN [OrderByDistinctData] [q1] ON [q1].[Id] = [q2].[Id]
ORDER BY
	[q1].[OrderData1]

