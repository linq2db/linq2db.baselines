-- Access.Jet.OleDb AccessOleDb

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON ([x].[ParentID] = [y].[ParentID])

-- Access.Jet.OleDb AccessOleDb

SELECT
	[g_1].[ParentID]
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [y] ON ([g_1].[ParentID] = [y].[ParentID])
GROUP BY
	[g_1].[ParentID]

