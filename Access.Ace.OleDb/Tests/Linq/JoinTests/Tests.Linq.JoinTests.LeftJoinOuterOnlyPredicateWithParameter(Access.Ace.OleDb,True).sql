-- Access.Ace.OleDb AccessOleDb
SELECT
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [p] ON ([p].[Value1] = IIF([c_1].[ChildID] <> 11 OR [c_1].[ChildID] = 21, [c_1].[ParentID], IIF([c_1].[ParentID] IS NULL, [c_1].[ParentID], NULL)))

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

