-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[ParentID],
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] IS NOT NULL AND [g_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

