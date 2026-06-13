-- Access.Jet.OleDb AccessOleDb

SELECT
	[p_1].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT TOP 10
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [p_1]
		RIGHT JOIN [Child] [c_1] ON ([p_1].[ParentID] = [c_1].[ParentID])

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

