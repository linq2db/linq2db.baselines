-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				SUM([c_1].[ChildID]) as [count_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + 1
		) [t1]
WHERE
	[p].[ParentID] > 0

