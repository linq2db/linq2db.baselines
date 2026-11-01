-- Access.Ace.Odbc AccessODBC
DECLARE @date DateTime
SET     @date = #2000-01-01#

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
			WHERE
				Now > ?
		) [t1] ON ([p].[ParentID] = [t1].[ParentID])

