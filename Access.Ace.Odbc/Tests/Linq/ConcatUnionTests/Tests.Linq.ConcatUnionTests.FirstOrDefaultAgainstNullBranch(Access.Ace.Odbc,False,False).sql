-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ParentID_1],
	[t1].[ParentID_1] as [ParentID_2],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			(
				SELECT TOP 1
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] = [p].[ParentID]
				ORDER BY
					[c_1].[ChildID]
			) as [ParentID_1],
			(
				SELECT TOP 1
					[c_2].[ChildID]
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ParentID] = [p].[ParentID]
				ORDER BY
					[c_2].[ChildID]
			) as [ChildID]
		FROM
			[Parent] [p]
	) [t1]
UNION ALL
SELECT
	[p_1].[ParentID],
	IIF(False, 0, NULL) as [ParentID_1],
	IIF(False, 0, NULL) as [ParentID_2],
	IIF(False, 0, NULL) as [ChildID]
FROM
	[Parent] [p_1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

