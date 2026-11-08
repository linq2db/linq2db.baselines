-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = -1

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
		) [t1] ON ([p].[ParentID] = [t1].[ParentID] AND [t1].[ChildID] > ?)

