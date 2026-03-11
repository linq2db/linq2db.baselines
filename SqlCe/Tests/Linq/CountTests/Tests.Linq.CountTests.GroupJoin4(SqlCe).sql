-- SqlCe

SELECT
	[t1].[Count1] + [t1].[Count1] as [Count1]
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count1]
			FROM
				[Child] [c_1]
			WHERE
				[t2].[ParentID] = [c_1].[ParentID]
		) [t1]

