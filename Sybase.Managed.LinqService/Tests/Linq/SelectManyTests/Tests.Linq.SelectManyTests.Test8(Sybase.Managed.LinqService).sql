BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p],
			[Parent] [c_1]
	) [sub]
		INNER JOIN [GrandChild] [c_2] ON [sub].[ParentID] = [c_2].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [sub].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
WHERE
	[sub].[ParentID] = [g_1].[ParentID]

