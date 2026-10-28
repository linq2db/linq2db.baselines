-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[g_1].[OrderData1] * 100 + [g_1].[OrderData2],
	COUNT(*)
FROM
	[OrderByDistinctData] [g_1]
GROUP BY
	[g_1].[OrderData1],
	[g_1].[OrderData2]
ORDER BY
	[g_1].[OrderData1] * 100 + [g_1].[OrderData2] DESC

