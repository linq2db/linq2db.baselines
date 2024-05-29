BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[ParentID]
FROM
	[Child] [gc]
		LEFT JOIN [Parent] [a_Parent] ON [gc].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [Child] [g_1] ON [a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = [g_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

