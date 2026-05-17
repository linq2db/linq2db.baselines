-- Access.Jet.OleDb AccessOleDb

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
	)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

