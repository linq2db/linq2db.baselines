-- Access.Ace.Odbc AccessODBC
DECLARE @year Int -- Int32
SET     @year = 2000

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
				DatePart('yyyy', Now) > ?
		) [t2] ON ([p].[ParentID] = [t2].[ParentID])

