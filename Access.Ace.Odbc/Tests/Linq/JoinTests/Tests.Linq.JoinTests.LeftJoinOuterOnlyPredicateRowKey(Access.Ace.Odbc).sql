-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = IIF([p].[ParentID] <> 2, [p].[ParentID], NULL) AND [c_1].[ChildID] = [p].[ParentID] * 10 + 1)

