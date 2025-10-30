BeforeExecute
-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[Count4] + 4 as [Count4]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count4]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > @n
		) [t1]

