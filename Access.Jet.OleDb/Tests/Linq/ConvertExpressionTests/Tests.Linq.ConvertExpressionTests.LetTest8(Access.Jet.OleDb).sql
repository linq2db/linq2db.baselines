-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([t1].[ParentID] IS NULL, 0, [t1].[ParentID_1]),
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [t1].[ParentID_2] AND [c_3].[ChildID] > -100
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [t1].[ParentID_2] AND [c_4].[ChildID] > -100
	),
	(
		SELECT TOP 1
			[c_5].[ParentID]
		FROM
			[Child] [c_5]
		WHERE
			[c_5].[ParentID] = [t1].[ParentID_2] AND [c_5].[ChildID] > -100
		ORDER BY
			[c_5].[ChildID]
	),
	(
		SELECT TOP 1
			[c_6].[ChildID]
		FROM
			[Child] [c_6]
		WHERE
			[c_6].[ParentID] = [t1].[ParentID_2] AND [c_6].[ChildID] > -100
		ORDER BY
			[c_6].[ChildID]
	)
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100 AND
					[c_1].[ParentID] > 0
				ORDER BY
					[c_1].[ChildID]
			) as [ParentID],
			(
				SELECT TOP 1
					[c_2].[ParentID]
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100 AND
					[c_2].[ParentID] > 0
				ORDER BY
					[c_2].[ChildID]
			) as [ParentID_1],
			[p].[ParentID] as [ParentID_2]
		FROM
			[Parent] [p]
	) [t1]

