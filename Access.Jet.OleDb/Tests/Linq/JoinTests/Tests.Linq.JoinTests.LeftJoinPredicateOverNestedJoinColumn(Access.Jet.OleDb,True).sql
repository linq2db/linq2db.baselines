-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[x].[ChildID],
				[g_1].[GrandChildID],
				[x].[ParentID]
			FROM
				[Child] [x]
					INNER JOIN [GrandChild] [g_1] ON ([g_1].[ChildID] = [x].[ChildID])
		) [t1] ON ([p].[ParentID] = [t1].[ParentID] AND [t1].[GrandChildID] > 300)

