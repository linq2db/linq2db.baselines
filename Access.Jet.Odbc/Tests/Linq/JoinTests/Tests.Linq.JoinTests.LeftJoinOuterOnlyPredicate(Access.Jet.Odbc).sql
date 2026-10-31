-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON (IIF([p].[ParentID] <> 2, [p].[ParentID], NULL) = [ch].[ParentID])

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

