-- Access.Jet.Odbc AccessODBC
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
	[t1].[ParentID_1],
	[t1].[ParentID_1],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p_1].[ParentID],
			[p_1].[ParentID] as [ParentID_1],
			[p_1].[ParentID] + 100 as [ChildID]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[p_2].[ParentID],
			IIF(False, 0, NULL) as [ParentID_1],
			IIF(False, 0, NULL) as [ChildID]
		FROM
			[Parent] [p_2]
	) [t1]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

