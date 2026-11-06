-- Access.Ace.OleDb AccessOleDb
SELECT
	[x_1].[ParentID],
	IIF([x_1].[ParentID_1] IS NULL, -1, IIF([x_1].[projection__set_id__] = 0, [x_1].[ChildID], NULL))
FROM
	(
		SELECT
			[x].[ParentID],
			[c_1].[ParentID] as [ParentID_1],
			[c_1].[ChildID],
			0 as [projection__set_id__]
		FROM
			[Parent] [x]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [x].[ParentID])
		UNION ALL
		SELECT
			[p].[ParentID],
			IIF(False, 0, NULL) as [ParentID_1],
			IIF(False, 0, NULL) as [ChildID],
			1 as [projection__set_id__]
		FROM
			[Parent] [p]
	) [x_1]

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

