BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	(
		SELECT
			[g_1].[ParentID],
			[g_1].[ChildID]
		FROM
			[Parent] [t1],
			[GrandChild] [g_1],
			[Parent] [c_1]
	) [sub]
		LEFT JOIN [Child] [a_Child] ON [sub].[ParentID] = [a_Child].[ParentID] AND [sub].[ChildID] = [a_Child].[ChildID]

