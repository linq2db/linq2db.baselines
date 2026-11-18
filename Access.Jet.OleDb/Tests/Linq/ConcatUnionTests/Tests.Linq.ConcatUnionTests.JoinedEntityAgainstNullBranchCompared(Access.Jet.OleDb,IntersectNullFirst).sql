-- Access.Jet.OleDb AccessOleDb
SELECT DISTINCT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID])
		WHERE
			[p].[ParentID] = [t1].[ParentID] AND [c_1].[ParentID] IS NULL AND
			[c_1].[ChildID] IS NULL
	)

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

