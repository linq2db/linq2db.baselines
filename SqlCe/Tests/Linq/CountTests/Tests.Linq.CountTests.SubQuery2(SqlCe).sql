BeforeExecute
-- SqlCe

SELECT
	[p].[Value1],
	[t1].[Count_1],
	[t2].[Count_1] as [Count_2]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[a_Children_1].[ParentID] = [p].[ParentID] AND [p].[ParentID] = [a_Children_1].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] <> 5

