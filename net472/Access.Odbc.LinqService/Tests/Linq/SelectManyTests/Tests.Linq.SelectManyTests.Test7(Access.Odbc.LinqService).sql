BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[a_Child].[ParentID], 
	[a_Child].[ChildID]
FROM
	(( 
		SELECT 
			[p].[ParentID]
		FROM
			[Parent] [p],
			[Parent] [c_1]
	) [cross_1]
		INNER JOIN [GrandChild] [g_1] ON ([cross_1].[ParentID] = [g_1].[ParentID]))
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID])
WHERE
	[cross_1].[ParentID] = [g_1].[ParentID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[a_Child].[ParentID], 
	[a_Child].[ChildID]
FROM
	(( 
		SELECT 
			[p].[ParentID]
		FROM
			[Parent] [p],
			[Parent] [c_1]
	) [cross_1]
		INNER JOIN [GrandChild] [g_1] ON ([cross_1].[ParentID] = [g_1].[ParentID]))
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID])
WHERE
	[cross_1].[ParentID] = [g_1].[ParentID]

