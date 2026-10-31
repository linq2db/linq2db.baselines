-- Access.Jet.OleDb AccessOleDb
SELECT DISTINCT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		INNER JOIN [Parent] [u] ON ([x].[ParentID] = [u].[ParentID])
WHERE
	[u].[Value1] > 5 AND [x].[ChildID] > 30

-- Access.Jet.OleDb AccessOleDb
SELECT DISTINCT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		INNER JOIN [Parent] [u] ON ([x].[ParentID] = [u].[ParentID])
WHERE
	[u].[Value1] > 5 AND [x].[ChildID] > 30

