BeforeExecute
-- SqlCe

SELECT
	[t1].[Sum_1]
FROM
	[Parent] [p]
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
		) [t1] ON [p].[ParentID] = [t1].[ParentID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
		WHERE
			[p].[ParentID] = [c_2].[ParentID] AND [c_2].[ParentID] > 1
	)

