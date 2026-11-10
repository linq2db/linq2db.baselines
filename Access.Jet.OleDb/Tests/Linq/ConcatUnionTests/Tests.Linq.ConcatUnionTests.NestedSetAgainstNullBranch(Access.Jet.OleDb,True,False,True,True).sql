-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p]
UNION
SELECT
	[t2].[ParentID],
	[t2].[Child],
	[t2].[ParentID_1],
	[t2].[ChildID]
FROM
	(
		SELECT
			[p_1].[ParentID],
			IIF(False, 0, NULL) as [Child],
			IIF(False, 0, NULL) as [ParentID_1],
			IIF(False, 0, NULL) as [ChildID]
		FROM
			[Parent] [p_1]
		UNION ALL
		SELECT
			[t1].[ParentID],
			[c_1].[ParentID] as [Child],
			[c_1].[ParentID] as [ParentID_1],
			[c_1].[ChildID]
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID])
	) [t2]

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

