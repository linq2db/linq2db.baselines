BeforeExecute
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
				[c_1].[ChildID] > 1 AND [p].[ParentID] = [c_1].[ParentID]
		) [t1]

