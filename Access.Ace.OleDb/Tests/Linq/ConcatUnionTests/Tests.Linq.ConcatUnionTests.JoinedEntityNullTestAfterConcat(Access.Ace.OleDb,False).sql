-- Access.Ace.OleDb AccessOleDb
SELECT
	[x_1].[ParentID]
FROM
	(
		SELECT
			[x].[ParentID],
			[c_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [x]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [x].[ParentID])
		UNION ALL
		SELECT
			[p].[ParentID],
			IIF(False, 0, NULL) as [ParentID_1]
		FROM
			[Parent] [p]
	) [x_1]
WHERE
	[x_1].[ParentID_1] IS NULL

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

