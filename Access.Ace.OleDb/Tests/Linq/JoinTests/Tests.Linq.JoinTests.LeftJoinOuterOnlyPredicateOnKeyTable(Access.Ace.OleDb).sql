-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	[ch].[ChildID],
	[gc].[GrandChildID]
FROM
	([Parent] [p]
		INNER JOIN [Child] [ch] ON ([p].[ParentID] = [ch].[ParentID]))
		LEFT JOIN [GrandChild] [gc] ON (IIF([ch].[ParentID] <> 2, [ch].[ChildID], NULL) = [gc].[ChildID])

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

