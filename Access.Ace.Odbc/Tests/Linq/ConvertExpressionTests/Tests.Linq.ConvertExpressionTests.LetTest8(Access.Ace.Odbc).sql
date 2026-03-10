-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([t1].[ParentID] IS NULL, 0, [t1].[ParentID_1]),
	[t1].[Any_1],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_6]
		WHERE
			[c_6].[ParentID] = [t1].[ParentID_3] AND [c_6].[ChildID] > -100
	),
	[t1].[ParentID_2],
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
			(
				SELECT TOP 1
					[c_3].[ParentID]
				FROM
					[Child] [c_3]
				WHERE
					[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100
				ORDER BY
					[c_3].[ChildID]
			) as [ParentID_2],
			(
				SELECT TOP 1
					[c_4].[ChildID]
				FROM
					[Child] [c_4]
				WHERE
					[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
				ORDER BY
					[c_4].[ChildID]
			) as [ChildID],
			EXISTS(
				SELECT
					*
				FROM
					[Child] [c_5]
				WHERE
					[c_5].[ParentID] = [p].[ParentID] AND [c_5].[ChildID] > -100
			) as [Any_1],
			[p].[ParentID] as [ParentID_3]
		FROM
			[Parent] [p]
	) [t1]

