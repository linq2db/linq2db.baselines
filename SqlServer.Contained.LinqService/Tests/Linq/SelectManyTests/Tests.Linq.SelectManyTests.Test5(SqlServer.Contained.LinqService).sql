BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [t1]
		CROSS JOIN [GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
		CROSS JOIN [Parent] [c_1]

