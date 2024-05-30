BeforeExecute
-- SqlServer.2005

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
				INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		WHERE
			[p].[ParentID] = 1
	) [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
WHERE
	[t1].[ParentID] = [g_1].[ParentID]

