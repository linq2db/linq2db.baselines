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
	[t1].[ParentID],
	[t1].[ParentID_1],
	[t1].[ParentID_1],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p_1].[ParentID],
			(
				SELECT TOP 1
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] = [p_1].[ParentID]
				ORDER BY
					[c_1].[ChildID]
			) as [ParentID_1],
			(
				SELECT TOP 1
					[c_2].[ChildID]
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ParentID] = [p_1].[ParentID]
				ORDER BY
					[c_2].[ChildID]
			) as [ChildID]
		FROM
			[Parent] [p_1]
	) [t1]

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

