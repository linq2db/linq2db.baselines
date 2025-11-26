-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID] + 1 as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p1].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + 1 < [p1].[ParentID] + 2
		) [t1]
WHERE
	[p1].[ParentID] > -1 AND [p1].[ParentID] > -2

