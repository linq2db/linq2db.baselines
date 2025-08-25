BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[COUNT_1] as [Count6]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [t1]

