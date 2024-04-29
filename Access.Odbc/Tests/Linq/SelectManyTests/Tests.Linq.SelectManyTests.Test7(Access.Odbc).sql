BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	((
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1],
			[Parent] [c_1]
	) [sub]
		INNER JOIN [GrandChild] [g_1] ON ([sub].[ParentID] = [g_1].[ParentID]))
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID])
WHERE
	[sub].[ParentID] = [g_1].[ParentID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	((
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1],
			[Parent] [c_1]
	) [sub]
		INNER JOIN [GrandChild] [g_1] ON ([sub].[ParentID] = [g_1].[ParentID]))
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID])
WHERE
	[sub].[ParentID] = [g_1].[ParentID]

