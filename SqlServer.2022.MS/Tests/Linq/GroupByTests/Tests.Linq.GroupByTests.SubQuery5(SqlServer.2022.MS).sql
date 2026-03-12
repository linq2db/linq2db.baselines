-- SqlServer.2022.MS SqlServer.2022

SELECT
	SUM([g_1].[ParentID])
FROM
	[Child] [g_1]
		LEFT JOIN [Parent] [p] ON [g_1].[ParentID] = [p].[ParentID]
GROUP BY
	[g_1].[ChildID]

