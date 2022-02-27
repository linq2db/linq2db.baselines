BeforeExecute
-- SqlCe

SELECT
	[t1].[ChildCount]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Sum([c_1].[ParentID] * [c_1].[ChildID]) as [ChildCount],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 2
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON [p].[ParentID] = [t1].[ParentID]

