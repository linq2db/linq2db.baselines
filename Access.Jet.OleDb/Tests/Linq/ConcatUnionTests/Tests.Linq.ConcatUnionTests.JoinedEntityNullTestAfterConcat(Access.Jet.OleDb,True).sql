-- Access.Jet.OleDb AccessOleDb
SELECT
	[x_1].[ParentID]
FROM
	(
		SELECT
			[x].[ParentID],
			IIF(False, 0, NULL) as [Child]
		FROM
			[Parent] [x]
		UNION ALL
		SELECT
			[t1].[ParentID],
			[c_1].[ParentID] as [Child]
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID])
	) [x_1]
WHERE
	[x_1].[Child] IS NULL

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

