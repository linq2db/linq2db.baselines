-- SqlServer.Contained SqlServer.2025
SELECT
	[g_1].[ParentID],
	[g_1].[Value1],
	COUNT(*)
FROM
	[Parent] [g_1]
GROUP BY
	[g_1].[ParentID],
	[g_1].[Value1]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

