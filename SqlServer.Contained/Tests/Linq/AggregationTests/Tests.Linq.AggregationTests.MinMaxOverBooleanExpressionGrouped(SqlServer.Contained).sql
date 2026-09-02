-- SqlServer.Contained SqlServer.2019
SELECT
	[g_1].[ItemId],
	MAX(IIF([g_1].[Value] = N'10', 1, 0)),
	MIN(IIF([g_1].[Value] = N'10', 1, 0))
FROM
	[ItemValue] [g_1]
GROUP BY
	[g_1].[ItemId]
ORDER BY
	[g_1].[ItemId]

