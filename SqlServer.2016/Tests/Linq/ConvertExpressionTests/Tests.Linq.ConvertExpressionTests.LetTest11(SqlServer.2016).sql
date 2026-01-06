-- SqlServer.2016

SELECT
	IIF([t2].[cond] IS NULL, 0, [t2].[cond]),
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			(
				SELECT TOP (1)
					[c_2].[ParentID]
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ParentID] > 0
				ORDER BY
					[c_2].[ParentID]
			) as [cond],
			[t1].[ParentID],
			[t1].[ChildID],
			[p].[ParentID] as [ParentID_1]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT TOP (1)
						[c_1].[ParentID],
						[c_1].[ChildID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ChildID] > -100
					ORDER BY
						[c_1].[ParentID]
				) [t1] ON 1=1
	) [t2]
ORDER BY
	[t2].[ParentID_1]

