-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID] as [HasValue_1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [p].[ParentID])

