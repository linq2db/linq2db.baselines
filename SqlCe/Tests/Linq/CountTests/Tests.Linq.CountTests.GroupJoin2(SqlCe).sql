-- SqlCe

SELECT
	[t1].[Count_1],
	[t2].[Count_1] as [Count_2]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[p].[ParentID] = [g_1].[ParentID]
		) [t2]

