-- SqlCe

SELECT
	[t1].[COUNT_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > 0
		) [t1]

