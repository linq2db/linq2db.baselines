-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p]
UNION
SELECT
	[t1].[ParentID],
	[t1].[Child],
	[t1].[Child],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p_1].[ParentID],
			IIF(False, 0, NULL) as [Child],
			IIF(False, 0, NULL) as [ChildID]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[p_2].[ParentID],
			[p_2].[ParentID] as [Child],
			[p_2].[ParentID] + 100 as [ChildID]
		FROM
			[Parent] [p_2]
	) [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

