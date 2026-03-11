-- SqlCe

SELECT
	[t1].[Count1],
	[t2].[Count2]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count2]
			FROM
				[GrandChild] [g_1]
			WHERE
				[p].[ParentID] = [g_1].[ParentID]
		) [t2]

