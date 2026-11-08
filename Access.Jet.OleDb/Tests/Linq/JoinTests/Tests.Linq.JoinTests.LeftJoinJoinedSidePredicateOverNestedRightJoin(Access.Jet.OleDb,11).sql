-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[p].[ParentID],
	[t1].[GrandChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[g_1].[ParentID],
				[x].[ChildID],
				[g_1].[GrandChildID]
			FROM
				[Child] [x]
					RIGHT JOIN [GrandChild] [g_1] ON ([g_1].[ChildID] = [x].[ChildID])
		) [t1] ON ([p].[ParentID] = [t1].[ParentID] AND [t1].[ChildID] > @id)

