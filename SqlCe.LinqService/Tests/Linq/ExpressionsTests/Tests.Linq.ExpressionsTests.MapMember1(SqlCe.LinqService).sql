BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ChildID] > 0 AND [p].[ParentID] = [a_Children].[ParentID]
		) [t1]

