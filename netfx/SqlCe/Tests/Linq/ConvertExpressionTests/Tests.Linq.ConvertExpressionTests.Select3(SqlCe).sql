BeforeExecute
-- SqlCe

SELECT
	[t1].[Sum_1]
FROM
	[Parent] [t]
		LEFT JOIN (
			SELECT
				Sum([c_1].[ChildID]) as [Sum_1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 1 AND [c_1].[ParentID] < 10
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON [t].[ParentID] = [t1].[ParentID]

