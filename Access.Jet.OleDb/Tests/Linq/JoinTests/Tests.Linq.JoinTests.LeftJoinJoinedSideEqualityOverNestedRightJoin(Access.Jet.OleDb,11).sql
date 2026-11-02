-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[p].[ParentID],
	[t2].[GrandChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[g_1].[GrandChildID],
				[g_1].[ParentID]
			FROM
				[Child] [t1]
					RIGHT JOIN [GrandChild] [g_1] ON ([g_1].[ChildID] = [t1].[ChildID])
			WHERE
				[t1].[ChildID] = @id
		) [t2] ON ([p].[ParentID] = [t2].[ParentID])

