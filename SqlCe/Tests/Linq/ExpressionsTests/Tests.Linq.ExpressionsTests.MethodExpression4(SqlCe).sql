BeforeExecute
-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[Count_1] + 4 as [Count4]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ChildID] > @n AND [p].[ParentID] = [a_Children].[ParentID]
		) [t1]

