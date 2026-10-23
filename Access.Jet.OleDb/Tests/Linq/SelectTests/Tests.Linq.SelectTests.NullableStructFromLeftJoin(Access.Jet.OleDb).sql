-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID] as [Value_1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [p].[ParentID])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

