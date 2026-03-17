-- Access.Ace.Odbc AccessODBC

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
	) [cross_1]
		LEFT JOIN [Child] [a_Child] ON ([cross_1].[ParentID] = [a_Child].[ParentID] AND [cross_1].[ChildID] = [a_Child].[ChildID])

