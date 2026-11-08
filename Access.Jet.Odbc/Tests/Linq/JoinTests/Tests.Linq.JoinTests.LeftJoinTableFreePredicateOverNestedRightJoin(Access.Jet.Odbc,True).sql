-- Access.Jet.Odbc AccessODBC
DECLARE @year Int -- Int32
SET     @year = 2000

SELECT
	[p].[ParentID],
	[t1].[GrandChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[g_1].[ParentID],
				[g_1].[GrandChildID]
			FROM
				[Child] [x]
					RIGHT JOIN [GrandChild] [g_1] ON ([g_1].[ChildID] = [x].[ChildID])
		) [t1] ON ([p].[ParentID] = [t1].[ParentID] AND DatePart('yyyy', Now) > ?)

