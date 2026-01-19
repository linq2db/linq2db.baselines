-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([t1].[cond] IS NULL, 0, [t1].[cond]),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] > 0
				ORDER BY
					[c_1].[ParentID]
			) as [cond],
			(
				SELECT TOP 1
					[c_2].[ParentID]
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ChildID] > -100
				ORDER BY
					[c_2].[ParentID]
			) as [ParentID],
			(
				SELECT TOP 1
					[c_3].[ChildID]
				FROM
					[Child] [c_3]
				WHERE
					[c_3].[ChildID] > -100
				ORDER BY
					[c_3].[ParentID]
			) as [ChildID],
			[p].[ParentID] as [ParentID_1]
		FROM
			[Parent] [p]
	) [t1]
ORDER BY
	[t1].[ParentID_1]

