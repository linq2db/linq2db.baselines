BeforeExecute
-- SqlCe

SELECT
	[t].[ParentID],
	[t1].[COUNT_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[t].[ParentID] = [c_1].[ParentID]
		) [t1]
WHERE
	[t1].[COUNT_1] > 0 AND [t1].[COUNT_1] IS NOT NULL

