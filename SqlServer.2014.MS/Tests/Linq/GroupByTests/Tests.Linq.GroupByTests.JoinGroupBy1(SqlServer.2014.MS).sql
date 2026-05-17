-- SqlServer.2014.MS SqlServer.2014

SELECT DISTINCT
	[g_1].[ParentID]
FROM
	[Child] [gc]
		INNER JOIN [GrandChild] [g_1] ON [gc].[ParentID] = [g_1].[ParentID] AND [gc].[ChildID] = [g_1].[ChildID]

