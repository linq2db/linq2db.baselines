-- Access.Ace.OleDb AccessOleDb
SELECT DISTINCT
	[t2].[ParentID],
	[t2].[ParentID_1],
	[t2].[ParentID_2],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[c_1].[ParentID] as [ParentID_1],
			[c_1].[ParentID] as [ParentID_2],
			[c_1].[ChildID]
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID])
		UNION ALL
		SELECT
			[p].[ParentID],
			IIF(False, 0, NULL) as [ParentID_1],
			IIF(False, 0, NULL) as [ParentID_2],
			IIF(False, 0, NULL) as [ChildID]
		FROM
			[Parent] [p]
	) [t2]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [p_1]
		WHERE
			[t2].[ParentID] = [p_1].[ParentID] AND
			[t2].[ParentID_1] IS NULL AND
			[t2].[ParentID_2] IS NULL AND
			[t2].[ChildID] IS NULL
	)

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

