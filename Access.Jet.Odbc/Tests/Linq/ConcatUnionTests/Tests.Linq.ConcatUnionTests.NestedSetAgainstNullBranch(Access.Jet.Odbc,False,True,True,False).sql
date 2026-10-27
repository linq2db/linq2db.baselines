-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Child],
	[t1].[Child] as [Child_1],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			IIF(False, 0, NULL) as [Child],
			IIF(False, 0, NULL) as [ChildID]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID],
			[p_1].[ParentID] as [Child],
			[p_1].[ParentID] + 100 as [ChildID]
		FROM
			[Parent] [p_1]
	) [t1]
UNION
SELECT
	[p_2].[ParentID],
	IIF(False, 0, NULL) as [Child],
	IIF(False, 0, NULL) as [Child_1],
	IIF(False, 0, NULL) as [ChildID]
FROM
	[Parent] [p_2]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

